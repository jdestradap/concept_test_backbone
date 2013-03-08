class ConceptTest.Views.EntryShow extends Backbone.View
  template: JST['entries/show']

  render: ->
    $(@el).html(@template(entry: @model))
    this
