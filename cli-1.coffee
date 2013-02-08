

flatiron = require 'flatiron'
docpad = require 'docpad'
app = flatiron.app



# Brackets could be made implicit
app.use flatiron.plugins.cli, {

  dir: __dirname

  usage: [
    'This is a basic flatiron cli application...'
    ''
    'hello - say hello to someone'
    """
    This is also a string inside the array but with
    But multi-line slash n
    """
  ]

}



app.cmd 'docpad', ->
  app.prompt.get 'name', (err,result) ->
    app.log.info "DocPad instance '" + result.name + "' created"
    console.log docpad.createInstance()


app.router.get '/', ->
  @.res.writeHead 200, 'Content-Type': 'text/plain'
  @.res.end 'Hello world\n'

app.start(8080)
