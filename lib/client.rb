# This class stores all bank account information for the client
class Client
  attr_reader :balance, :date, :debit, :credit

  def initialize
    @balance = []
    @date = []
    @debit = []
    @credit = []
  end
end
