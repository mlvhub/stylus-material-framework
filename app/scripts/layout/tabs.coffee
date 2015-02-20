m = require 'mithril'
general = require './general'
tabsView = require '../components/tabs'

tabsLayout = (tabs) ->
  general tabsView(tabs)

module.exports = tabsLayout
