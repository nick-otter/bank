require 'client'
require 'formatter'

# This class allows the client to deposit, withdraw and print statement
class Bank
  attr_reader :client, :formatter

  def initialize(client = Client.new, formatter = Formatter.new)
    @client = client
    @formatter = formatter
  end

  def deposit(amount)
    @client.credit(amount)
  end

  def withdraw(amount)
    @client.debit(amount)
  end

  def print_statement
    @formatter.print_statement
  end
end
