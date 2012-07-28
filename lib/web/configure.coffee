#
# lib/web/index.coffee
#
# Copyright (c) 2012 Lee Olayvar <leeolayvar@gmail.com>
# MIT Licensed
#
flatiron = require 'flatiron'
app = require './app'



# Use the default http plugin.
app.use flatiron.plugins.http

# Set up the app to use winston logging.
app.use flatiron.plugins.log


# Log all connections
app.http.before.push (req, res, next) ->
  app.log.debug "#{req.connection.remoteAddress} "+
    "[#{(new Date()).toUTCString()}] "+
    "#{req.method} "+
    "#{req.url} "+
    "#{req.headers['user-agent']}"
  next()