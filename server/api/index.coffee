data = require '../models'

paramToTitle = (title) ->
  (title.split('_').map (word) -> word[0].toUpperCase() + word[1..-1].toLowerCase()).join ' '

# create
exports.addPost = (req, res) ->
  data.Post.create req.body, (err, post) ->
    if err
      res.send "Error occurred creating post", 404
    else
      res.send "Post created successfully"

# read index
exports.posts = (req, res) ->
  data.Post.find (err, posts) ->
    if err
      res.send "Error occurred getting posts", 404
    else
      res.send posts

# read
exports.post = (req, res) ->
  title = paramToTitle req.params.title
  data.Post.findOne {title: title}, (err, post) ->
    if err
      res.send "Error occurred getting post", 404
    else
      res.send post

# update
exports.editPost = (req, res) ->
  title = paramToTitle req.params.title
  data.Post.findOneAndUpdate {title: title}, req.body, (err) ->
    if err
      res.send "Error occurred removing post", 404
    else
      res.send "Post successfully updated"

# destroy
exports.removePost = (req, res) ->
  title = paramToTitle req.params.title
  data.Post.findOneAndRemove {title: title}, (err) ->
    if err
      res.send "Error occurred removing post", 404
    else
      res.send "Post removed successfully"
