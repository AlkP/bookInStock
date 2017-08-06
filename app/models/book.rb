class Book < ApplicationRecord
  has_many :book_stocks
  has_many :stocks, through: :book_stocks
  belongs_to :publisher, optional: true
  
  validates :name, presence: true, length: { minimum: 4 }
  validates :publisher_id, presence: true
  
  scope :publisher, -> (name) { joins(:publisher).where('publishers.name LIKE :name', name: '%' + name + '%') } 
end
