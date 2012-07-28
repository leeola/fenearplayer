#
# lib/config.coffee
#
# Copyright (c) 2012 Lee Olayvar <leeolayvar@gmail.com>
# MIT Licensed
#
path = require 'path'
pork = require 'pork'



# Default CLI specific options.
cli =
  daemon: false

# Default web config
web =
  port: 50080
  local_only: true



exports.cli = cli
exports.web = web