require 'date'
class Account
  attr_reader :balance
  STARTING_BALANCE = 0
  def initialize
    @balance = STARTING_BALANCE
  end
  def deposit(amount, date = DateTime.now.strftime('%a, %d/%b/%Y'))
    @amount = amount
    @date = date
    @balance += @amount
  end
  def withdraw(amount, date = DateTime.now())
    @amount = amount
    @date = date
    raise 'Payment Failed, your balance is 0' if @balance == 0
    raise 'Payment Failed, your balance is less than witdraw amount' if @balance < @amount
    @balance -= @amount
  end
end
