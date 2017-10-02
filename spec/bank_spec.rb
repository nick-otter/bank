require 'bank'

RSpec.describe Bank do
  context '#init' do
    it 'initializes with a new instance of Client' do
      expect(subject.client).to be_an_instance_of(Client)
    end
    it 'initializes with a new instance of Formatter' do
      expect(subject.formatter).to be_an_instance_of(Formatter)
    end
  end

  context '#deposit' do
    it 'takes an argument' do
      client_deposit_amount = 10
      expect(subject).to receive(:deposit).with(client_deposit_amount)
      subject.deposit(client_deposit_amount)
    end
  end

  context '#withdraw' do
    it 'takes an argument' do
      client_withdraw_amount = 5
      expect(subject).to receive(:withdraw).with(client_withdraw_amount)
      subject.withdraw(client_withdraw_amount)
    end
  end

end
