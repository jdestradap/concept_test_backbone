class ConceptTest.Collections.Entries extends Backbone.Collection
  url: '/api/entries'
  model: ConceptTest.Models.Entry

  drawWinner: ->
    winner = @shuffle()[0]
    winner.win() if winner