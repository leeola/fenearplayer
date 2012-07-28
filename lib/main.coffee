#
# lib/main.coffee
#
# Copyright (c) 2012 Lee Olayvar <leeolayvar@gmail.com>
# MIT Licensed
#
winston = require 'winston'
web = require './web'




# (options) -> undefined
#
# Desc:
#   Start the Player process.
start = (options) ->
  winston.log 'warning', 'main options are ignored.'
  
  # Start our processes.
  web.main.start()



exports.start = start