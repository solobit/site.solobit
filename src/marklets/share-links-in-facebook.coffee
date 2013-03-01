d = document
f = "http://www.facebook.com/share"
l = d.location
e = encodeURIComponent
p = ".php?src=bm&v=4&i=1250537391&u=" + e(l.href) + "&t=" + e(d.title)
1
try
  throw (0)  unless /^(.*.)?facebook.[^.]*$/.test(l.host)
  share_internal_bookmarklet p
catch z
  a = ->
    l.href = f + p  unless window.open(f + "r" + p, "sharer", "toolbar=0,status=0,resizable=1,width=626,height=436")

  a()  unless /Firefox/.test(navigator.userAgent)
undefined
