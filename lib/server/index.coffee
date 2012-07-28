#
# lib/web/index.coffee
#
# Copyright (c) 2012 Lee Olayvar <leeolayvar@gmail.com>
# MIT Licensed
#
main = require './main'



exports.app = require './app'
exports.configure = require './configure'
exports.main = main
exports.route = require './route'
exports.start = main.start