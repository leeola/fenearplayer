#
# lib/web/route.coffee
#
# Copyright (c) 2012 Lee Olayvar <leeolayvar@gmail.com>
# MIT Licensed
#
app = require './app'


###
# Log all incoming requests.
app.router.get '/*', () ->
  console.log "\n\nreq keys:\n#{(key for key of @req.headers)}\n\n"
  
  app.log.info "#{@req.headers.host} [#{(new Date()).toUTCString()}] GET #{@req.url} #{@req.headers['user-agent']}"
###
app.router.get '/', () ->
  @res.writeHead 200, options =
    'Content-Type': 'text/plain'
  @res.end "Url: #{@req.url}"

app.router.get '/*', () ->
  @res.writeHead 200, options =
    'Content-Type': 'text/plain'
  @res.end "Url: #{@req.url}"
