m = require 'mithril'
header = require './header'
footer = require './footer'

layout = (header, body, footer) ->
  m 'div.layout', [
    m 'header', header
    m 'main', body
    m 'footer', footer
  ]
  
mixinLayout = (layout, header, body, footer) ->
  ->
    layout(header(), body(), footer())

general = (body) ->
  mixinLayout(layout, header, body, footer)

module.exports.generic = layout
module.exports.mixin = mixinLayout
module.exports.general = general
