class CreateBookStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :book_stocks do |t|
      t.references :book,   index: true, null: false
      t.references :stock,  index: true, null: false
      
      t.float       :price, null: false
      t.integer     :count, null: false
    end
    
    add_index :book_stocks, [:book_id, :stock_id, :price], unique: true
  end
end
