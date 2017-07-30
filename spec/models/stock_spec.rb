require 'rails_helper'

RSpec.describe Stock, type: :model do
  it { should have_many :books }
  it { should have_many :book_stocks }
  
  it { should validate_presence_of(:name) }
  it { should validate_length_of(:name).is_at_least(4) }
end