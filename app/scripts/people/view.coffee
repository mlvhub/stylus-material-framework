m = require 'mithril'
anim = require '../common/anim'

view =
  list: (controller) ->
    console.log 'controller', controller
    m 'ul', [
      controller.people.map (person) ->
        m 'li.zebra',
          key: person.id
          onclick: anim.fadeOut(controller.remove.bind @, person)
          config: anim.fadeIn
        , person.name
    ]
  table: (controller) ->
    m 'table', controller.people.map (person) ->
      m 'tr', [
        m 'td', person.id
        m 'td', person.name
      ]

module.exports = view
