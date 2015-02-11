# Vendor
m = require 'mithril'

app = require './app'

console.log "APP", app

m.route document.body, "/",
  "/": app