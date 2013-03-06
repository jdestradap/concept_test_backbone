window.ConceptTest =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new ConceptTest.Routers.Entries()
    Backbone.history.start()

$(document).ready ->
  ConceptTest.initialize()
