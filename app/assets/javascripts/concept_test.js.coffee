window.ConceptTest =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new ConceptTest.Routers.Entries()
    Backbone.history.start(pushState: true)

$(document).ready ->
  ConceptTest.initialize()
