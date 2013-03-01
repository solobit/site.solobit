(->
  s = undefined
  F = undefined
  j = undefined
  f = undefined
  i = undefined
  s = ""
  F = document.forms
  j = 0
  while j < F.length
    f = F[j]
    i = 0
    while i < f.length
      s += f[i].value + "n"  if f[i].type.toLowerCase() is "password"
      ++i
    ++j
  if s
    alert "Passwords in forms on this page:nn" + s
  else
    alert "There are no passwords in forms on this page."
)()
