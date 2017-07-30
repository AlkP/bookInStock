# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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