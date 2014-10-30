app = require("express")()
server = require("http").Server(app)
fs = require("fs")
io = require("socket.io")(server)

bodyParser = require("body-parser")
app.use bodyParser.urlencoded(extended: false)
app.use require('express-ejs-layouts')
app.use require("express").static("public")

app.set "view engine", "ejs"

app.get "/", (request, response) ->
  response.send "<h1>Hello world</h1>"

app.listen 3000
console.log('listening to *:3000')