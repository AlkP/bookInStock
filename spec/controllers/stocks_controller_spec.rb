require 'rails_helper'

RSpec.describe StocksController, type: :controller do
  before do
    p1 = Publisher.create!( name: 'Lemon' )
    p2 = Publisher.create!( name: 'Orange' )
    p3 = Publisher.create!( name: 'Grapefruit' )
    b1 = Book.create!( name: 'Van Gogh', publisher_id: p1.id )
    b2 = Book.create!( name: 'Salvador Dali', publisher_id: p1.id )
    b3 = Book.create!( name: 'Pablo Picasso', publisher_id: p2.id )
    b4 = Book.create!( name: 'Claude Monet',  publisher_id: p3.id )
    s1 = Stock.create!( name: 'Barnes&Noble' )
    s2 = Stock.create!( name: 'The Strand Books Store' )
    BookStock.create!( book_id: b1.id, stock_id: s1.id, price:12.54,  count:3 )
    BookStock.create!( book_id: b2.id, stock_id: s2.id, price:23.34,  count:4 )
    BookStock.create!( book_id: b3.id, stock_id: s1.id, price:56.09,  count:2 )
    BookStock.create!( book_id: b1.id, stock_id: s2.id, price:12.57,  count:5 )
    BookStock.create!( book_id: b2.id, stock_id: s1.id, price:23.25,  count:5 )
    BookStock.create!( book_id: b4.id, stock_id: s1.id, price:123.25, count:2 )
  end
  
  describe 'GET #filter_by_publisher' do
    it "returns a successful 200 response" do
      get :publisher, :format => :json
      expect(response).to be_success
    end
    
    it 'populates an array of all stock if name not set' do
      get :publisher, :params => { :name => '' }, :format => :json
      expect(response.body).to_not be_nil
    end
    
    it 'populates an array of all stock if name is nil' do
      get :publisher, :format => :json
      expect(response.body).to eq ""
    end
    
    it 'populates an array of a stock if name publisher set correct' do
      get :publisher, :params => { :name => 'fru' }, :format => :json
      expect(response.body).to_not be_nil
    end
    
    it 'not populates an array of a stock if name publisher set uncorrect' do
      get :publisher, :params => { :name => 'qwerty' }
      expect(response.body).to eq "[]"
    end
  end
  
  describe 'GET #books_in_stock' do
    it "returns a successful 200 response" do
      get :books, :format => :json
      expect(response).to be_success
    end
    
    it 'populates an array of all stock if name not set' do
      get :books, :params => { :name => '' }, :format => :json
      expect(response.body).to_not be_nil
    end
    
    it 'populates an array of a stock if name publisher set correct' do
      get :books, :params => { :name => 'St' }, :format => :json
      expect(response.body).to_not be_nil
    end
    
    it 'not populates an array of a stock if name publisher set uncorrect' do
      get :books, :params => { :name => 'qwerty' }
      expect(response.body).to eq "[]"
    end
  end
end
