class Stock < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { minimum: 4 }
  
  has_many :book_stocks
  has_many :books, through: :book_stocks
  
  scope :publisher, -> (name) { joins(:book_stocks).where('book_id IN (:ID)', ID: Book.publisher(name).map(&:id)).distinct  } 

  scope :by_name, -> (name) { where("name LIKE :name", name: '%' + name + '%').map(&:books) }
end
