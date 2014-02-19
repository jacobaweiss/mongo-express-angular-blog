# seed dummy posts
data     = require './models'
mongoose = require 'mongoose'

mongoose.connection.collections['posts'].drop()
seeds =
  [
    {
      title: "Flow My Tears, the Policeman Said",
      content: "On Tuesday, October 11, 1988, the Jason Taverner Show ran thirty seconds short. A technician, watching through the plastic bubble of the control dome, froze the final credit on the video section, then pointed to Jason Taverner, who had started to leave the stage. The technician tapped his wrist, pointed to his mouth."
    },
    {
      title: "Mythologies",
      content: "The virtue of all-in wrestling is that it is the spectacle of excess. Here we find a grandiloquence which must have been that of ancient theaters. And in fact wrestling is an open-air spectacle, for what makes the circus or the arena what they are is not the sky (a romantic value suited rather to fashionable occasions), it is the drenching and vertical quality of the flood of light."
    },
    {
      title: "Notes on Anarchism",
      content: "A French writer, sympathetic to anarchism, wrote in the 1890s that \"anarchism has a broad back, like paper it endures anything\" -- including, he noted those whose acts are such that \"a mortal enemy of anarchism could not have done better.\"1 There have been many styles of thought and action that have been referred to as \"anarchist.\" It would be hopeless to try to encompass all of these conflicting tendencies in some general theory or ideology."
    }
  ]
data.Post.create post for post in seeds
