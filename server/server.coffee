express = require 'express'
http    = require 'http'
path    = require 'path'
db      = require './mongoose'
api     = require './api'
seeds   = require './seeds'
app     = express()

assetsPath = path.join(__dirname, '..', '_public')

app.use express.static(assetsPath)
app.use express.bodyParser()
app.use app.router

app.post   '/api/post',        api.addPost
app.get    '/api/post',        api.posts
app.get    '/api/post/:id',    api.post
app.put    '/api/post/:id',    api.editPost
app.delete '/api/post/:id',    api.removePost
app.get    '*',                (req, res) -> res.sendfile "#{assetsPath}/index.html"

module.exports.startServer = (port, path, callback) ->
  app.set 'port', port
  http.createServer(app).listen port, ->
    console.log "Express server listening on port #{port}"
