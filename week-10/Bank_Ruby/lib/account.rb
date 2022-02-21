require 'date'
class Account
  attr_reader :balance, :transaction_list
  STARTING_BALANCE = 0
  def initialize
    @balance = STARTING_BALANCE
    @transaction_list = []
  
  end
  def deposit(deposit_amount, date = DateTime.now.strftime('%a, %d/%b/%Y'))
    @deposit_amount = deposit_amount
    @date = date
    @balance += @deposit_amount
  end
  def withdraw(withdraw_amount, date = DateTime.now())
    @withdraw_amount = withdraw_amount
    @date = date
    raise 'Payment Failed, your balance is 0' if @balance == 0
    raise 'Payment Failed, your balance is less than witdraw amount' if @balance < @withdraw_amount
    @balance -= @withdraw_amount
  end

  def transaction
    @transaction_list << { date: @date, deposit: @deposit_amount, withdraw: @withdraw_amount, balance: @balance }
  end
end
