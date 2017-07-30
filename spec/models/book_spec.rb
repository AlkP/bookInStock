require 'rails_helper'

RSpec.describe Book, type: :model do
  it { should have_many :stocks }
  it { should have_many :book_stocks }
  
  it { should validate_presence_of(:name) }
  it { should validate_length_of(:name).is_at_least(4) }
end
