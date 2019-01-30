class AddQuantityToLineItems < ActiveRecord::Migration[5.2]
  def change
    
    add_column :line_items, :order_id, :reference, :quantity, :integer, default: 1
  end
end
