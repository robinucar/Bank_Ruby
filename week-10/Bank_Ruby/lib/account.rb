class Account
  attr_reader :balance

  STARTING_BALANCE = 0
  def initialize
    @balance = STARTING_BALANCE
  end
end
