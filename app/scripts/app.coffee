m = require 'mithril'
_ = require 'lodash'
layout = require './layout'

body = ->
  _.times 6, () ->
    m 'div.zebra', [
      m 'p', 'Invokes the iteratee function n times, returning an array of the results of each invocation.'
      m 'button.button.flat', 'Button'
      m 'button.button.raised', 'Button'
      m 'button.button.floating', '+'
    ]
    
app =
  controller: ->
    console.log 'app controller'
  view: layout.general(body)

module.exports = app
