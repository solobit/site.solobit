
###
Module dependencies.
###

# start listening for data events from stdin stream
sanitize = (str) ->

  # not in use, using iconv instead
  str = str.replace(/\u2018/g, "'")
  str = str.replace(/\u2019/g, "'")
  str = str.replace(/\u201c/g, "\"")
  str = str.replace(/\u201d/g, "\"")
  str = str.replace(/\u2013/g, "-")
  str = str.replace(/\u2014/g, "--")
  str = str.replace(/\uFFFD/g, "'")
  str
publish = (topic) ->
  args = Array::slice.call(arguments_, 1)
  subscribers = topics[topic] or []
  subscribers.forEach (fn) ->
    fn.apply null, args

touch = (pathname, cb) ->
  unless path.existsSync(pathname)
    fs.writeFileSync pathname, "", encoding = "utf8"
    console.log "created filename: ", pathname
subscribe = (topic, fn) ->
  subscribers = topics[topic] or (topics[topic] = [])
  subscribers.push fn
  destroy: ->
    idx = subscribers.indexOf(fn)
    subscribers.splice idx, 1  if idx >= 0

# console.log("got title: " + data);

# prompt for confirmation before we look at the clipboard
# gives user opportunity to get the right stuff on there

# grab clipboard content and slop it into the new file

# var cleanstr = sanitize(data);

# console.log("wrote sanitized content back out to: " + currentFilename);

# TODO: should be its own module
# get single-line input from stdin

# console.log("/stdin/data subscriber: " + str);

# TODO: had a bitch of a time getting multi-line input from stdin
# wanted to allow ^D to signal end of input, but that kills stdin
# and I can't seem to re-open it

# so.. instead, we'll go direct to the clipboard

# source content from the (OSX) clipboard

# OSX-specific - we use the pbpaste utility to pull the content off the clipboard
# optional exec options:
# { encoding: 'utf8',
#   timeout: 0,
#   maxBuffer: 200*1024,
#   killSignal: 'SIGTERM',
#   cwd: null,
#   env: null }

# pass pbpaste output through iconv to make sure we get plain ascii back
#  it fixes curly quotes, ellipses and the kind of junk you often get
#  when copy/pasting code from e.g. a blog or slide)
# prolly should be a separate step, but its easier to just pipe it here
# while we are calling exec anyhow

# console.log("got data from pbpaste: " + stdout);
step = (defn) ->

  # handle each step in the plan, going through
  # preFn, source and postFn
  return  unless defn
  defn.preFn and defn.preFn()
  if defn.source
    throw new Error("No such input source: " + defn.source)  if not defn.source of input
    input[defn.source] (data) ->
      defn.postFn.apply defn, arguments_  if defn.postFn
      step plan[defn.next]  if defn.next

fs = require("fs")
path = require("path")
spawn = require("child_process").spawn
exec = require("child_process").exec

isListening = false
currentFilename = null
process.stdin.setEncoding "utf8"
topics = {}
outDir = process.cwd()
process.stdin.on "data", (data) ->
  publish "/stdin/data", data

plan =
  title:
    source: "stdinSingle"
    preFn: (data) ->
      console.log "What's the title?"

    postFn: (data) ->
      filename = data.toLowerCase().replace(/[^\w]+/g, "_")
      filename = filename.replace(/_{2,}/g, "_")
      filename = filename.replace(/^_|_$/, "")
      filename += ".js"
      currentFilename = path.normalize(path.join(outDir, filename))
      console.log "creating file: " + currentFilename
      touch outDir + "/" + filename

    next: "precontent"

  precontent:
    source: "stdinSingle"
    preFn: (data) ->
      console.log "Pulling content from the clipboard, <ENTER> when ready"

    next: "content"

  content:
    source: "clipboard"
    postFn: (data) ->
      cleanstr = data
      fs.writeFileSync currentFilename, cleanstr, encoding = "utf8"  if currentFilename

input =
  stdinSingle: (cb) ->
    dataHdl = subscribe("/stdin/data", (str) ->
      process.stdin.pause()
      dataHdl.destroy()
      cb str.replace(/^\s|\s+$/g, "")
    )
    process.stdin.resume()

  clipboard: (cb) ->
    proc = exec("pbpaste | iconv -c -f utf-8 -t ASCII//TRANSLIT", (error, stdout, stderr) ->
      if error
        console.log "Error returned from pbpaste exec call"
        throw error
      else
        cb stdout
    )

app = module.exports = {}

# execute first step in the plan
step plan.title  unless module.parent
