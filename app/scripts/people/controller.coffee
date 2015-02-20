peopleController = (people) ->
  ->
    @remove = (person) ->
      people.remove person
    @people = people.list()
    return

module.exports = peopleController
