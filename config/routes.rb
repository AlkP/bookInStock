Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/filter_by_publisher"  => "stocks#publisher"
  get "/books_in_stock"       => "stocks#books"
  
end
