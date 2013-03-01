# ☕ Coffeebook 📖 snippets 📍 for CoffeeMarklets 🍴
# 📚 literate
# 📰 http://johtso.github.com/CoffeeMarklet/
# 🔠
# 📋 Paste your CoffeeScript in that web service or
#
# 🔃 git clone https://github.com/johtso/CoffeeMarklet.git 📙

# Todo literate

GetSelectedText = ->
  selectedText = ((if window.getSelection then window.getSelection() else (if document.getSelection then document.getSelection() else document.selection.createRange().text)))
  selectedText = document.activeElement.value.substring(document.activeElement.selectionStart.document.activeElement.selectionEnd)  if document.activeElement.selectionStart  if not selectedText or selectedText is ""
  selectedText

alert GetSelectedText()
