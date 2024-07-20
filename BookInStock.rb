class BookInStock
    def initialize(isbn, price)
        @isbn = isbn
        @price = Float(price)
    end
end

book_one = BookInStock.new('isbn1', 3)
p book_one

book_two = BookInStock.new('isbn2', 3.14)
p book_two

book_three = BookInStock.new('isbn3', '5.67')
p book_three


