m = require 'mithril'
Velocity = require 'velocity-animate'

anim =
  fadeIn: (element, isInitialized, context) ->
    if not isInitialized
      element.style.opacity = 0
      Velocity element, opacity: 1, duration: 1000
  fadeOut: (callback) ->
      (e) ->
        #don't redraw yet
        m.redraw.strategy("none")
        Velocity e.target, opacity: 0,
          complete: ->
            #now that the animation finished, redraw
            m.startComputation()
            callback()
            m.endComputation()
  page:
    fadeOut: (containerSelector) ->
      (element, isInitialized, context) ->
        console.log 'page.fadeOut', containerSelector, element, isInitialized, context
        if !isInitialized
          element.onclick = (e) ->
            e.preventDefault()
            container = document.querySelector(containerSelector)
            Velocity container, opacity: 0,
              complete: ->
                m.route element.getAttribute('href')
              duration: 500

module.exports = anim
