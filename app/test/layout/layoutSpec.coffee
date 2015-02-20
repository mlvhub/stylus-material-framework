layout = require '../../scripts/layout/general'
mq = require 'mithril-query'
m = require 'mithril'

describe 'layout module', ->

  beforeEach  ->
    @general = general
    @generalBody = ->
      m '.layout', [
        'Some text'
      ]

  it 'should create the general layout correctly', ->
    view = mq @general(@generalBody)
    expect(view.has('header')).toBe true
    expect(view.has('footer')).toBe true
    expect(view.has('main > div.layout')).toBe true
    expect(view.contains('Some text')).toBe true
