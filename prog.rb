class BookInStock
  attr_reader :isbn, :price
  def initialize(isbn, price)
    @isbn=isbn
    @price=Float(price)
  end
  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
  def price=(new_price)
    @price=new_price
  end
  def price_in_cents
    Integer(@price*100+0.5)
  end
  def price_in_cents=(cents)
    @price=cents/100
  end
end
a_book=BookInStock.new("isbn1", 79.65)
b_book=BookInStock.new("isbn2", 67)
puts "ISBN = #{a_book.isbn}"
puts "Price = #{a_book.price}"
#a_book.price=a_book.price*2
puts "Price in cents = #{a_book.price_in_cents}"
#puts b_book
a_book.price_in_cents=1023
puts "Price in cents = #{a_book.price_in_cents}"
