class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  
  def index
    @books = Book.order(:title)
  end
end
