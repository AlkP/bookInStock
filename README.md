# Books in Stoke

Model:

publisher (name)
book(name, id_publisher)
stock(name)
bookInStock (stock_id, book_id, price, count)
  bookInStockIndexUnique(stock_id, book_id, price)

../filter_by_publisher?name=Publisher name (or piece of Publisher name)
../books_in_stock?name=Stock name (or piece of Stock name)


* ruby 2.3.0p0 (2015-12-25 revision 53290) [x86_64-linux]

* Rails 5.0.4
