DATE = 14/01/2012

# This class stores all bank account information for the client
class Client
  attr_reader :balance, :date, :debit, :credit

  def initialize
    @balance = []
    @date = []
    @debit = []
    @credit = []
  end

  def update_credit(amount)
    @credit.push(amount)
    @date.push(DATE)
  end

  def update_debit(amount)
    @debit.push(amount)
    @date.push(DATE)
  end
end
