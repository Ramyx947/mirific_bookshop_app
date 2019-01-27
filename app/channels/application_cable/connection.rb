module ApplicationCable
  class Connection < ActionCable::Connection::Base
    # used for general authentication
    # query the database for a specific user that is making the connection and 
    # ensure that the user is allowed to listen the channel
  end
end
