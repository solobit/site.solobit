d = document
w = window
enc = encodeURIComponent
e = w.getSelection
k = d.getSelection
x = d.selection
s = ((if e then e() else (if (k) then k() else ((if x then x.createRange().text else 0)))))
s2 = ((if (s.toString() is "") then s else ("%22" + enc(s) + "%22")))
f = "http://bit.ly/"
l = d.location
p = "?v=3&u=" + enc(l.href) + "&s=" + enc(d.title) + " " + s2
u = f + p
try
  throw (0)  unless /^(.*.)?tumblrzzz[^.]*$/.test(l.host)
  tstbklt()
catch z
  a = ->
    l.href = u  unless w.open(u)

  if /Firefox/.test(navigator.userAgent)
    setTimeout a, 0
  else
    a()
undefined
