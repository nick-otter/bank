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
    let(:client) { double :Client }

    it 'calls client.credit' do
      amount = 10
      bank = Bank.new(client)
      allow(client).to receive(:credit).with(amount) { "Updates credit score" }
      expect(bank.deposit(amount)).to eq("Updates credit score")
    end
  end

  context '#withdraw' do
    let(:client) { double :Client }

    it 'calls client.debit' do
      amount = 10
      bank = Bank.new(client)
      allow(client).to receive(:debit).with(amount) { "Updates debit score" }
      expect(bank.withdraw(amount)).to eq("Updates debit score")
    end
  end

  context '#print_statement' do
    let(:formatter) { double :Formatter }
    let(:client) { double :Client }

    it 'calls formatter.print_statement' do
      bank = Bank.new(client, formatter)
      allow(formatter).to receive(:print_statement) { "Client Statement" }
      expect(bank.print_statement).to eq("Client Statement")
    end
  end

end
