App.PostsController = Ember.ArrayController.extend
  init: ->
    @_super()
    @set('author', '名無しさん')
    @setNextFetch()

  fetchUnread: ->
    lastId = @model.content[@model.content.length - 1].id
    @store.find('post', { q: { id_gt: lastId } }).then (unread) =>
      @store.pushMany 'post', unread
      @setNextFetch()

  setNextFetch: ->
    Ember.run.later @, @fetchUnread, 5 * 1000 #未読分を５秒毎に取得する

  actions:
    create: ->
      # 未読分を取得する
      @fetchUnread().then =>
        # 新規投稿を生成
        post = @store.createRecord 'post',
          author: @get('author')
          body: @get('body')
        # DBに保存
        post.save()
        # 投稿本文をクリアする
        @set('body', null)
