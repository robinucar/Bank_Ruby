class Account
  attr_reader :balance

  STARTING_BALANCE = 0
  def initialize
    @balance = STARTING_BALANCE
  end
  def deposit(amount)
    @amount = amount
    @balance += @amount
  end
  def withdraw(amount)
    @amount = amount
    raise 'Payment Failed, your balance is 0' if balance == 0
    @balance -= @amount
  end
end
