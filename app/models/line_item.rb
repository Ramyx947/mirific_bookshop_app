class LineItem < ApplicationRecord
  belongs_to :book
  belongs_to :cart
end
