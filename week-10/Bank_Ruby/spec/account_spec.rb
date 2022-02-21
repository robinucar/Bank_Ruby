require 'account'
describe Account do
  let(:account) { Account.new }
  it 'should create an account with 0 balance' do
    expect(account.balance).to eq 0
  end
  it 'balance should  increase by depost amount' do
		account.deposit(100)
		expect(account.balance).to eq 100
  end
end
