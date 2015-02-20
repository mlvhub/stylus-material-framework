m = require 'mithril'
header = require './header'
footer = require './footer'
helpers = require './helpers'

general = (body) ->
  helpers.mixinLayout(helpers.layout, header, body, footer)

module.exports = general
