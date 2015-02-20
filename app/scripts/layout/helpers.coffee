m = require 'mithril'

helpers =
  layout: (header, body, footer) ->
    m 'div.layout', [
      m 'header', header
      m 'main.container', body
      m 'footer', footer
    ]
  mixinLayout: (layout, header, body, footer) ->
    (controller) ->
      layout(header(), body(controller), footer())

module.exports = helpers
