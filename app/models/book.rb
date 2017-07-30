class Book < ApplicationRecord
  validates :name, presence: true
  validates :publisher_id, presence: true
  validates :name, length: { minimum: 4 }
  
  has_many :book_stocks
  has_many :stocks, through: :book_stocks
  belongs_to :publisher, optional: true
  
  scope :publisher, -> (name) { joins(:publisher).where('publishers.name LIKE :name', name: '%' + name + '%') } 
  
end
