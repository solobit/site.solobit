popw = ""
Q = ""
x = document
y = window
if x.selection
  Q = x.selection.createRange().text
else if y.getSelection
  Q = y.getSelection()
else Q = x.getSelection()  if x.getSelection
popw = y.open("https://mail.google.com/mail/?view=cm&fs=1&tf=1&to=&su=" +
  escape(document.title) +
  "&body=" +
  escape(Q) +
  escape("n") +
  escape(location.href) +
  "&zx=RANDOMCRAP&shva=1&disablechatbrowsercheck=1&ui=1",
  "gmailForm",
  "scrollbars=yes,width=680,height=510,top=175,left=75,status=no,resizable=yes")
T = setTimeout("popw.focus()", 50)  unless document.all
undefined
