# This is a basic VCL configuration file for varnish.  See the vcl(7) man page
# for details on VCL syntax and semantics.
#
# Default backend definition.  Set this to point to your content server.
#
# This points to nginx web server running as backend. This is a local web
# server but we can add many more, local or remote here.

backend default {
     .host = "127.0.0.1";
     .port = "81";
     .connect_timeout = 5s;
     .first_byte_timeout = 30s;
     .between_bytes_timeout = 60s;
     .max_connections = 800;
}

# Next we add in node.js sample
backend nodejs {
    .host = "127.0.0.1";
    .port = "1337";
    .connect_timeout = 1s;
    .first_byte_timeout = 2s;
    .between_bytes_timeout = 60s;
    .max_connections = 800;
}

# Node.js backend infra #################################

# 5010
backend node5010 {
    .host = "127.0.0.1";
    .port = "5010";
}

# 5011
backend node5011 {
    .host = "127.0.0.1";
    .port = "5011";
}
# 5012
backend node5012 {
    .host = "127.0.0.1";
    .port = "5012";
}
# 5013
backend node5013 {
    .host = "127.0.0.1";
    .port = "5013";
}

###########################################################

# Python servers
#
# Graphite metrics
backend graphite {
    .host = "127.0.0.1";
    .port = "2003";
}



# Removed: ACL for purging

sub vcl_recv {

  # Ignore all "POST" requests - nothing cacheable there
  if (req.request == "POST") {
    return (pass);
  }

  # In the event of a backend overload (HA!),
  # serve stale objects for up to two minutes
  set req.grace = 2m;

  set req.backend = default;

  # Ignore all traffic to analytics.*,
  # since that's all internal
  #
  #
  if (req.http.host ~"metrics.solobit.net") {
      set req.backend = graphite;
      return (pipe);
  }


  # Backend routing: we skip everything for these node.js instances running on
  # our machine. To keep these persistent, use systemd.socket/services.  Use
  # autoquit package for automatic create/kill of workers on visit (much like
  # Heroku etc. do)

  if (req.http.host ~"node.solobit.net") {
      set req.backend = node5010;
      return (pipe);
  }
  if (req.http.host ~"solobit.net/demos/node/rt/hummingbird") {
      set req.backend = node5011;
      return (pipe);
  }
  if (req.http.host ~"solobit.net/demos/node/tw/scrumblr") {
      set req.backend = node5012;
      return (pipe);
  }
  if (req.http.host ~"node.hack.co.nl") {
      set req.backend = node5013;
      return (pipe);
  }

  # Remove cookies from most kinds of static objects, since we want
  # all of these things to be cached whenever possible - images, 
  # html, JS, CSS, web fonts, and flash. There's also a regex on the
  # end to catch appended version numbers.
  if (req.url ~ "(?i)\.(png|gif|jpeg|jpg|ico|swf|css|js|html|htm|woff|ttf|eot|svg)(\?[a-zA-Z0-9\=\.\-]+)?$") {
      remove req.http.Cookie;
  }

  # Set the correct IP so my backends don’t log all requests as coming from Varnish
  if (req.restarts == 0) {
      if (req.http.x-forwarded-for) {
          set req.http.X-Forwarded-For =
          req.http.X-Forwarded-For + ", " + client.ip;
      } else {
          set req.http.X-Forwarded-For = client.ip;
      }
  }

    # Remove port, so that hostname is normalized
  set req.http.Host = regsub(req.http.Host, ":[0-9]+", "");

  # Removed: code for purging

  # Part of Varnish’s default config
  if (req.request != "GET" &&
      req.request != "HEAD" &&
      req.request != "PUT" &&
      req.request != "POST" &&
      req.request != "TRACE" &&
      req.request != "OPTIONS" &&
      req.request != "DELETE") {
      /* Non-RFC2616 or CONNECT which is weird. */
      return (pipe);
  }
  if (req.request != "GET" && req.request != "HEAD") {
      return (pass);
  }

  ###############################################################################################
  # Pipe websocket connections directly to Node.js
  if (req.http.Upgrade ~ "(?i)websocket") {
        set req.backend = nodejs;
        return (pipe);
  }

  ###############################################################################################
  # Do not cache large static files
  if (req.url ~ "\.(avi|flv|mp(e?)g|mp4|mp3|gz|tgz|bz2|tbz|ogg)$") {
      return(pass);
  }

  ###############################################################################################
  # General URL manipulation and cookie removal
  if(req.http.Host ~"^(www\.)?solobit.net") {

    # Removed: Redirect for URL normalization using error 701
    # Requests made to this path, relate to websockets
    if (req.url ~ "^/socket.io/") {
        set req.backend = nodejs;
        # Pass does not seem to work (even for XHR polling)
        return (pipe);
    }

  # Static sites / resources get included here, each in its own block
  } else if (req.http.Host ~ "^(static\.)?solobit.net") {
     #...
  } else if (req.http.Host ~ "^(node\.)?hack.co.nl") {
        set req.backend = nodejs;
        return (pipe);
  }

    # Part of Varnish’s default config
    if (req.http.Authorization || req.http.Cookie) {
        /* Not cacheable by default */
        return (pass);
    }

    return (lookup);
}

sub vcl_pipe {
    #we need to copy the upgrade header
    if (req.http.upgrade) {
        set bereq.http.upgrade = req.http.upgrade;
    }
    #closing the connection is necessary for some applications – I haven’t had any issues with websockets keeping the line below uncommented
    #set bereq.http.Connection = "close";
     return (pipe);
}



# sub vcl_pass {
#     return (pass);
# }
# 
# sub vcl_hash {
#     hash_data(req.url);
#     if (req.http.host) {
#         hash_data(req.http.host);
#     } else {
#         hash_data(server.ip);
#     }
#     return (hash);
# }
# 
# sub vcl_hit {
#     return (deliver);
# }
# 
# sub vcl_miss {
#     return (fetch);
# }
# 
# sub vcl_fetch {
#     if (beresp.ttl <= 0s ||
#         beresp.http.Set-Cookie ||
#         beresp.http.Vary == "*") {
#     /*
#      * Mark as "Hit-For-Pass" for the next 2 minutes
#      */
#     set beresp.ttl = 120 s;
#     return (hit_for_pass);
#     }
#     return (deliver);
# }
# 
# sub vcl_deliver {
#     return (deliver);
# }
# 
# sub vcl_error {
#     set obj.http.Content-Type = "text/html; charset=utf-8";
#     set obj.http.Retry-After = "5";
#     synthetic {"
# <?xml version="1.0" encoding="utf-8"?>
# <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
#  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
# <html>
#   <head>
#     <title>"} + obj.status + " " + obj.response + {"</title>
#   </head>
#   <body>
#     <h1>Error "} + obj.status + " " + obj.response + {"</h1>
#     <p>"} + obj.response + {"</p>
#     <h3>Guru Meditation:</h3>
#     <p>XID: "} + req.xid + {"</p>
#     <hr>
#     <p>Varnish cache server</p>
#   </body>
# </html>
# "};
#     return (deliver);
# }
# 
# sub vcl_init {
#   return (ok);
# }
# 
# sub vcl_fini {
#   return (ok);
# }

