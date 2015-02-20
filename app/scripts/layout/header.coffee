m = require 'mithril'
anim = require '../common/anim'

currentRoute = m.route()

console.log 'currentRoute', currentRoute

links = [
  {title: 'Home', url: '/'}
  {title: 'People', url: '/people'}
]

module.exports = ->
  m '.menu', links.map (link) ->
    m("a",
      href: link.url
      config: anim.page.fadeOut('.layout')
      class: if currentRoute is link.url then 'active' else ''
    , link.title)
