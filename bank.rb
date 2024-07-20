require_relative "account"
require_relative "transaction"

savings = Account.new(100)
checking = Account.new(200)

transaction = Transaction.new(checking, savings)
transaction.transfer(50)

puts savings.balance