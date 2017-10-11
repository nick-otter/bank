require_relative 'account'
require_relative 'statement'

# This class allows the client to deposit, withdraw and print statement
class Bank
  attr_reader :account

  def initialize(account = Account.new)
    @account = account
  end

  def deposit(amount)
    @account.update_credit(amount)
  end

  def withdraw(amount)
    @account.update_debit(amount)
  end

  def print_statement(statement = Statement.new(@account))
    statement.print_statement
  end
end

#
bank = Bank.new
# p "deposit"
# p bank.deposit(10)
# p "credit arr"
# p bank.account.credit
# p "deposit"
# p bank.deposit(10)
# p "credit arr"
# p bank.account.credit
# p "withdraw"
# p bank.withdraw(20)
# p "debit arr"
# p bank.account.debit
# p "print statement"
# bank.print_statement
