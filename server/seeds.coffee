# seed dummy posts
data     = require './models'
mongoose = require 'mongoose'

mongoose.connection.collections['posts'].drop()
seeds =
  [
    {
      title: "First Post",
      content: "This is the first blog entry."
    },
    {
      title: "Last Post",
      content: "This is the last blog entry."
    }
  ]
data.Post.create post for post in seeds
