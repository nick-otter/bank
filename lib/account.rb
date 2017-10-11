DATE = "14/01/2012"
# DEFAULT_BALANCE = 0

# This class stores all bank account information for the client
class Account
  attr_reader :balance, :date, :debit, :credit

  def initialize
    @balance = []
    @date = []
    @debit = []
    @credit = []
  end

  def update_credit(amount)
    @credit.push(amount)
    @debit.push(" ")
    @date.push(DATE)
    credits_balance(amount)
  end

  def update_debit(amount)
    @debit.push(amount)
    @credit.push(" ")
    @date.push(DATE)
    debits_balance(amount)
  end

  private

  def credits_balance(amount)
    if @balance.length == 0
      @balance.push(amount)
    else
      @balance.push((@balance.last) + amount)
    end
  end

  def debits_balance(amount)
    if @balance.length == 0
      @balance.push(0 - amount)
    else
      @balance.push((@balance.last) - amount)
    end
  end
end
