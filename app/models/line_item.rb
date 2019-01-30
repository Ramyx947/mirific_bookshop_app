class LineItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :book, optional: true
  belongs_to :cart

  def total_price
    book.price * quantity
  end
  
end
