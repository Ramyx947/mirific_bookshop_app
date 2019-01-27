class BooksChannel < ApplicationCable::Channel
  def subscribed
    # The subscribed callback is invoked when a client-side subscription is initiated;
    stream_from 'books'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
