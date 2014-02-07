mongoose = require 'mongoose'
Schema   = mongoose.Schema

PostSchema = new Schema
  title: String
  content: String
  date: { type: Date, default: Date.now }

Post = mongoose.model('Post', PostSchema)
exports.postModel = Post
