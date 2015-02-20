controller = require './controller'
view = require './view'
model = require './model'
layout = require '../layout/general'
tabsLayout = require '../layout/tabs'

console.log 'view', view

tabs = [
  {name: 'List', view: view.list}
  {name: 'Table', view: view.table}
]

peopleModule =
  controller: controller model
  view: tabsLayout tabs
  #view: layout view.list

module.exports = peopleModule
