class Stock < ApplicationRecord
  has_many :book_stocks
  has_many :books, through: :book_stocks
  
  validates :name, presence: true, length: { minimum: 4 }
  
  scope :search_by_publisher, -> (name) { name.nil? ? all : publisher(name) }
  scope :search_by_book, -> (name) { name.nil? ? all : by_name(name) }
  scope :publisher, -> (name) { joins(:book_stocks).where('book_id IN (:ID)', ID: Book.publisher(name).map(&:id)).distinct }
  scope :by_name, -> (name) { where("name LIKE :name", name: '%' + name + '%').map(&:books) }
end
