require_relative 'account'

# This class outputs the clients details in a table
class Statement
  attr_reader :account

  def initialize(account)
    @account = account
  end

  def header
    "date || credit || debit || balance"
  end

  def row
    @account.date.each_index do |i|
      puts "#{@account.date[i]} || #{@account.credit[i]} || #{@account.debit[i]} || #{@account.balance[i]}"
    end
  end

  def print_statement
    puts header
    row
  end
end

account = Account.new
statement = Statement.new(account)
p statement.row
