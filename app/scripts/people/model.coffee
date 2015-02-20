_ = require 'lodash'

people = _.times 500, (n) ->
  {id: n, name: "Person #{n}"}

People =
  list: ->
    people
  add: (person) ->
    people.push person
    @list()
  remove: (person) ->
    console.log 'removing'
    people.splice people.indexOf(person), 1
    @list()

module.exports = People
