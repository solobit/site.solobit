(->
  R = (w) ->
    try
      d = w.document
      j = undefined
      i = undefined
      t = undefined
      T = undefined
      N = undefined
      b = undefined
      r = 1
      C = undefined
      j = 0
      while t = ["object", "embed", "applet", "iframe"][j]
        T = d.getElementsByTagName(t)
        i = T.length - 1
        while (i + 1) and (N = T[i])
          if j isnt 3 or not R((if (C = N.contentWindow) then C else N.contentDocument.defaultView))
            b = d.createElement("div")
            b.style.width = N.width
            b.style.height = N.height
            b.innerHTML = "<del>" + ((if j is 3 then "third-party " + t else t)) + "</del>"
            N.parentNode.replaceChild b, N
          --i
        ++j
    catch E
      r = 0
    r
  R self
  i = undefined
  x = undefined
  i = 0
  while x = frames[i]
    R x
    ++i
)()
