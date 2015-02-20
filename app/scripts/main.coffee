# Vendor
m = require 'mithril'

# App
app = require './app'
people = require './people'

console.log "APP", app
console.log "PEOPLE", people

m.route document.body, "/",
  "/": app
  "/people": people
