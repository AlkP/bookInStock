Rails.application.routes.draw do

  namespace :stocks do
    get 'by_publisher'
    get 'by_book'
  end
  
end
