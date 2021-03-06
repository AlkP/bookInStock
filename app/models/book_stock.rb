class BookStock < ApplicationRecord
  validates :book_id,   presence: true
  validates :stock_id,  presence: true
  validates :price,     presence: true
  validates :count,     presence: true
  
  belongs_to :book
  belongs_to :stock
  
end
