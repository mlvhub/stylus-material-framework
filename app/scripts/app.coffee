m = require 'mithril'
_ = require 'lodash'
header = require './layout/header'
footer = require './layout/footer'

layout = (header, body, footer) ->
  m "div.layout", [
    m "header", header
    m "main", body
    m "footer", footer
  ]
  
mixinLayout = (layout, header, body, footer) ->
  ->
    layout(header(), body(), footer())
      
body = ->
  _.times 6, () ->
    m "div.zebra", [
      m "p", "Invokes the iteratee function n times, returning an array of the results of each invocation."
      m "button.button.flat", "Button"
      m "button.button.raised", "Button"
      m "button.button.floating", "+"
    ]
    
app =
  controller: ->
    console.log 'app controller'
  view: mixinLayout(layout, header, body, footer)

module.exports = app