_ = require 'lodash'

describe 'Dummy Spec', ->

  beforeEach ->
    @sum = ->
      _.reduce arguments, (x, y) -> x + y
    @count = 0

  it 'should sum all the arguments given correctly', ->
    @count = @sum 1,2,3,4
    expect(@count).toBe 10

  it 'should sum negative arguments correctly', ->
    @count = @sum 1,-2,-3,4
    expect(@count).toBe 0
