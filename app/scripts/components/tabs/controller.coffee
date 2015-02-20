controller = (data) ->
  init: (tabs) ->
    data.selectedTab = tabs[0]
  changeTab: (tab) ->
    data.selectedTab = tab
  isSelected: (tab) ->
    data.selectedTab.name is tab.name
  selectedView: (containerController) ->
    console.log data
    data.selectedTab.view containerController

module.exports = controller
