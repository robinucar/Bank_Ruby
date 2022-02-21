require 'account'
describe Account do
  let(:account) { Account.new }
  it 'should create an account with 0 balance' do
    expect(account.balance).to eq 0
  end
  it 'balance should  increase by deposit amount' do
    account.deposit(100, 'Mon, 21/Feb/2022')
    expect(account.balance).to eq 100
  end

  it 'balance should decrease by withdraw amount' do
    account.deposit(100, 'Mon, 21/Feb/2022')
    account.withdraw(25, 'Mon, 21/Feb/2022')
    expect(account.balance).to eq 75
  end

  it 'should not be able to withdraw money if balance is 0' do
    expect { account.withdraw(50, 'Mon, 21/Feb/2022') }.to raise_error('Payment Failed, your balance is 0')
  end

  it 'should not be able to withdraw money if balance is less than witdraw amount' do
    account.deposit(25, 'Mon, 21/Feb/2022')
    expect do
      account.withdraw(50, 'Mon, 21/Feb/2022').to raise_error('Payment Failed, your balance is less than witdraw amount')
    end
  end

  it 'should store all transaction' do
    account.deposit(2500, 'Mon, 21/Feb/2022')
    account.withdraw(500, 'Mon, 21/Feb/2022')
    expect(account.transaction.length).to eq 2
  end
end
