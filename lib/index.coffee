#
# lib/index.coffee
#
# Copyright (c) 2012 Lee Olayvar <leeolayvar@gmail.com>
# MIT Licensed
#
main = require './main'



exports.app = require './app'
exports.client = require './client'
exports.main = main
exports.start = main.start
exports.server = require './server'