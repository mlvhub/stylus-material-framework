# Vendor
m = require 'mithril'

# App
app = require './app'

console.log "APP", app

m.route document.body, "/",
  "/": app
