#
# lib/server/route.coffee
#
# Copyright (c) 2012 Lee Olayvar <leeolayvar@gmail.com>
# MIT Licensed
#
app = require './app'
views = require './views'




app.router.get '/', () ->
  @res.writeHead 200,
    'Content-Type': 'text/html'
  @res.end views.base