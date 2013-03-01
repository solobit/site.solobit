


http = require 'http'

# Winston is designed to be a simple and universal logging library with support for multiple transports.
winston = require("../../lib/winston")

#
# Logging levels
#
config =
  levels:
    httpreq: 0
    info: 1
    success: 2
    data: 3
    warn: 4
    debug: 5
    error: 6

  colors:
    httpreq:    "magenta"
    info:       "blue"
    success:    "green"
    data:       "grey"
    warn:       "yellow"
    debug:      "blue"
    error:      "red"

logger = module.exports = new (winston.Logger)(
    transports: [new (winston.transports.Console)(colorize: true)]
    levels: config.levels
    colors: config.colors
    )


# Known mime types
[any, json, xml] = ['*/*', 'application/json', 'text/xml']

# Gets a value from the db in format [value, contentType]
get = (store, key, format) ->
    value = store[key]
    throw 'Unknown key' if not value
    switch format
        when any, json then [JSON.stringify({ key: key, value: value }), json]
        when xml then ["<key>#{ key }</key>\n<value>#{ value }</value>", xml]
        else throw 'Unknown format'

# Puts a value in the db
put = (store, key, value) ->
    throw 'Invalid key' if not key or key is ''
    store[key] = value

store =
    foo:    'bar'
    coffee: 'script'

# helper function that responds to the client
respond = (res, code, contentType, data) ->
    res.writeHead code,
        'Content-Type': contentType
        'Content-Length': data.length
    res.write data
    res.end()

# Create the HTTP web server using two callbacks by standard first request,
# followed by the response.
server = http.createServer (req, res) ->

    logger.httpreq req.method, req.url
    key = req.url[1..]
    contentType = 'text/plain'
    code = 404

    switch req.method
        when 'GET'
            try
                [value, contentType] = get store, key, req.headers.accept
                code = 200
            catch error
                value = error
                logger.error error
            respond res, code, contentType, value + '\n'
            logger.success code, value  if code = 200

        when 'POST'
            value = ''
            req.on 'data', (chunk) -> value += chunk
            req.on 'end', () ->
                try
                    put store, key, value
                    value = ''
                    code = 200
                catch error
                    value = error + '\n'
                    logger.error error
                respond res, code, contentType, value
                logger.success code, value  if code = 200

server.listen 8000
