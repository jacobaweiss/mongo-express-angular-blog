Minimal CRUD Blog application with MongoDb, Express, AngularJS, Jade, etc.

To run:

`npm install`

`bower install`

`mongod`

`brunch watch --server`

Assumes dependencies node, npm, mongoDB are installed.

This follows the architecture and discussion of [this article](http://cmme.org/tdumitrescu/blog/2013/11/lean-angular-express-architecture/) by Ted Dumitrescu for me to briefly explore the technologies used. It diverges from his post in the usage of [ngResource](http://docs.angularjs.org/api/ngResource/service/$resource) for the RESTful client-side code, and [Mongoose](http://mongoosejs.com/) for object-relational mapping.
