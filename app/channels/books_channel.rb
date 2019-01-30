class BooksChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'books'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
