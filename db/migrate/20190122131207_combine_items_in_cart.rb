class CombineItemsInCart < ActiveRecord::Migration[5.2]
  def up
    # iterate over each cart and 
    # add the quantity of each book associated with this cart (book_id)
    # this will result in a list of ordered pairs of books_ids and quantity
    Cart.all.each do |cart|
      # count the number of each book in the cart
      sums = cart.line_items.group(:book_id).sum(:quantity)
      # iterate over this sum, extracting book_id and quantity
      sums.each do |book_id, quantity|
        if quantity > 1
          # remove individual books
          cart.line_items.where(book_id: book_id).delete_all
          # replace with a single item
          item = cart.line_items.build(book_id: book_id)
          item.quantity = quantity
          item.save!
        end
      end
    end
  end


  def down
    # split items with quantity>1 into multiple items
    LineItem.where("quantity>1").each do |line_item|
      # add individual items
      line_item.quantity.times do
        LineItem.create(
          cart_id: line_item.cart_id,
          book_id: line_item.book_id,
          quantity: 1
        )
      end
      # remove original item
      line_item.destroy
  end

end
