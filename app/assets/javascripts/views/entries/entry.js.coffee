class ConceptTest.Views.Entry extends Backbone.View
  template: JST['entries/entry']
  tagName: 'li'

  events:
    'click': 'showEntry'

  showEntry: ->
    Backbone.history.navigate("entries/#{@model.get('id')}", true)

  initialize: ->
    @model.on('change', @render, this)
    @model.on('highlight', @highlightWinner, this)

  highlightWinner: ->
    $('.winner').removeClass('highlight')
    @$('.winner').addClass('highlight')

  render: ->
    $(@el).html(@template(entry: @model))
    this