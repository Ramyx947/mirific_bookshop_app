class Cart < ApplicationRecord
    has_many :line_items, dependent: :destroy

    # check if the list of items includes the item => and increase quantity by 1
    # if not it will build new item
    def add_book(book)
        current_item = line_items.find_by(book_id: book.id)
        if current_item
            current_item.quantity +=1
        else
            current_item = line_items.build(book_id: book.id)
        end
        current_item
    end
end
