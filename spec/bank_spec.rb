require 'bank'

RSpec.describe Bank do
  context '#init' do
    it 'initializes with a new instance of Client' do
      expect(subject.account).to be_an_instance_of(Account)
    end
  end

  context '#deposit' do
    let(:account) { double :Account }

    it 'calls client.credit' do
      amount = 10
      bank = Bank.new(account)
      allow(account).to receive(:update_credit).with(amount) { "Updates credit score" }
      expect(bank.deposit(amount)).to eq("Updates credit score")
    end
  end

  context '#withdraw' do
    let(:account) { double :Account }

    it 'calls client.debit' do
      amount = 10
      bank = Bank.new(account)
      allow(account).to receive(:update_debit).with(amount) { "Updates debit score" }
      expect(bank.withdraw(amount)).to eq("Updates debit score")
    end
  end

  context '#print_statement' do
    let(:account) { double :Account }
    let(:statement) { double :Statement }

    it 'calls statement.print_statement' do
      bank = Bank.new(account)
      allow(statement).to receive(:print_statement) { "Client Statement" }
      expect(bank.print_statement).to eq("Client Statement")
    end
  end

end
