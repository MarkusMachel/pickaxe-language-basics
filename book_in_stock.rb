class BookInStock

    attr_reader :isbn, :price

    def initialize(isbn, price)
        @isbn = isbn
        @price = Float(price)
    end

    def price_in_cents
        (price * 100).round
    end

    # def price_in_cents=(cents)
    #     @price = cents / 100.0
    # end
    # def price=(price)
    #     @price = price
    # end
    # def isbn
    #     @isbn
    # end

    # def price
    #     @price
    # end

end