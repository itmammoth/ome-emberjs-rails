App.Post = DS.Model.extend
  author: DS.attr('string')
  body: DS.attr('string')
  created_at: DS.attr('date')
  updated_at: DS.attr('date')
