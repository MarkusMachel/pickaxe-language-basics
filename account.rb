class Account
    protected attr_reader :balance

    def initialize(balance)
        @balance = balance
    end

    def greater_balance_than?(other)
        @balance > other.balance
    end
end