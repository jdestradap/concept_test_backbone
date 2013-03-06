class ConceptTest.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/:id': 'show'

  initialize: ->
    @collection = new ConceptTest.Collections.Entries()
    @collection.fetch()

  index: ->
    view = new ConceptTest.Views.EntriesIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Entry #{id}"