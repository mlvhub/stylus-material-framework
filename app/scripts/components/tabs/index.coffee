data = require './model'
controller = require('./controller')(data)
tabsView = require('./view').bind tabsView, controller

module.exports = tabsView
