m = require 'mithril'

tabView = (ctrl, tab) ->
  console.log 'tab: ctrl', ctrl
  m 'a',
    class: if ctrl.isSelected tab then 'selected' else ''
    onclick: ctrl.changeTab.bind ctrl, tab
  , tab.name

tabsView = (ctrl, tabs) ->
  console.log 'tab: ctrl', ctrl
  ctrl.init tabs
  (containerController) ->
    m '.tabs', [
      m 'ul', tabs.map (tab) ->
        m 'li', [tabView ctrl, tab]
      m '.tab-container', ctrl.selectedView(containerController)
    ]

module.exports = tabsView
