describe Account do
  it 'should create an account with 0 balance' do
    account = Account.new
    expect(account.balance).to eq 0
  end
end
