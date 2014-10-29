app = require("express")()


app.get "/", (request, response) ->
  response.send "<h1>Hello world</h1>"

app.listen 3000
console.log('listening to *:3000')