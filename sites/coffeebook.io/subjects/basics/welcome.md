<script>$('#flipbook').turn({width: 400,height: 300,autoCenter: true});</script>


Coffeebook
==========

What is Coffeebook?
-------------------
<div>
Coffeebook is a startup to provide quality code services through literate programming coded essays in several languages (CoffeeScript and Clojure, perhaps JS/Ruby/Python may follow).

Text in Coffeebook is made up using a patch of GitHub Flavored Markdown.

</div>
I'm not great at programming, but I love finding out new stuff and relating it back to purpose, quality and elegance. Also I think I have found a pasion in story telling.

This is what you get

 * rich snippets of standalone functionality
 * properly named variables and contextual information
 * additional best libraries under MIT in coffeescript
 * practice and learn programming concepts

This below should trigger the clojure compiler:

``` clojure
(println "hello world!")
(+ 1 2 3 4)
(map #{a: 1 b: 2})

```


<div id="flipbook">
  <div class="hard"> Turn.js </div>
  <div class="hard"></div>
  <div> Page 1 </div>
  <div> Page 2 </div>
  <div> Page 3 </div>
  <div> Page 4 </div>
  <div class="hard"></div>
  <div class="hard"></div>
</div>


Popular programming languages of the modern era include ActionScript

C++

``` cpp
// function example
#include <iostream>
using namespace std;

int addition (int a, int b)
{
  int r;
  r=a+b;
  return (r);
}

int main ()
{
  int z;
  z = addition (5,3);
  cout << "The result is " << z;
  return 0;
}

```

<small>
This is [on GitHub](https://github.com/jbt/markdown-editor) so let me know if I've b0rked it somewhere.

Basic useful feature list:

 * Ctrl/Cmd + S to save the file
 * Drag and drop a file into here to load it
 * File contents are saved in the URL so you can share files


Props to Mr. Doob and his [code editor](http://mrdoob.com/projects/code-editor/), from which
the inspiration to this, and some handy implementation hints, came.

### Stuff used to make this:

 * [showdown.js](https://github.com/coreyti/showdown) (my own port with fixes and tweaks) for Markdown parsing
 * [CodeMirror](http://codemirror.net/) for the awesome syntax-highlighted editor
 * [highlight.js](http://softwaremaniacs.org/soft/highlight/en/) for syntax highlighting in output code blocks
 * [js-deflate](https://github.com/dankogai/js-deflate) for gzipping of data to make it fit in URLs
 </small>

