class ConceptTest.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/:id': 'show'

  initialize: ->
    @collection = new ConceptTest.Collections.Entries()
    @collection.reset($('#container').data('entries'))

  index: ->
    view = new ConceptTest.Views.EntriesIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    @model = @collection.get(id)
    view = new ConceptTest.Views.EntryShow(model: @model)
    $('#container').html(view.render().el)