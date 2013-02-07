

flatiron = require 'flatiron'
app = flatiron.app

app.use flatiron.plugins.http

app.router.get '/', () ->
  @.res.writeHead 200, 'Content-Type': 'text/plain'
  @.res.end 'Hello world\n'

app.start 8080
