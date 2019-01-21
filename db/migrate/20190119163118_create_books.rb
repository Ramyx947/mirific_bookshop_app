class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :description
      t.string :image_url
      t.integer :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
