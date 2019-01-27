App.books = App.cable.subscriptions.create "BooksChannel",
  # client side 
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
  document.querySelector("main").innerHTML = data.html