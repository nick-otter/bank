DATE = 14/01/2012
DEFAULT_BALANCE = 0

# This class stores all bank account information for the client
class Client
  attr_reader :balance, :date, :debit, :credit

  def initialize
    @balance = [DEFAULT_BALANCE]
    @date = []
    @debit = []
    @credit = []
  end

  def update_credit(amount)
    @credit.push(amount)
    @debit.push(0)
    @date.push(DATE)
    credits_balance(amount)
  end

  def update_debit(amount)
    @debit.push(amount)
    @credit.push(0)
    @date.push(DATE)
    debits_balance(amount)
  end

  private

  def credits_balance(amount)
    @balance.push(@balance.last + amount)
  end

  def debits_balance(amount)
    @balance.push(@balance.last - amount)
  end
end
