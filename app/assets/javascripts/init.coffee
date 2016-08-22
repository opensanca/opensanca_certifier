window.App ||= {}

App.init = ->
  console.log("application initiated...")

$(document).on "turbolinks:load", ->
  App.init()
