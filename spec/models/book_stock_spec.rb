require 'rails_helper'

RSpec.describe BookStock, type: :model do
  it { should validate_presence_of(:book_id) }
  it { should validate_presence_of(:stock_id) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:count) }
end