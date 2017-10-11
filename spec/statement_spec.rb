require 'statement'

RSpec.describe Statement do
  let(:account) { double :Account }
  subject(:Statement) { described_class.new(account) }

  context '#init' do
    it 'initializes with a new instance of Account' do
      expect(subject.account).to eq(account)
    end
  end

  context '#header' do
    it 'stores the table header' do
      expect(subject.header).to eq ("date || credit || debit || balance")
    end
  end

  context '#row' do
    let(:account) { double :Account }
    subject(:Statement) { described_class.new(account) }

    before do
      allow(account).to receive(:date) { ["date"] }
    end

    it 'populates the rows with client date' do
      expect(subject.row).to eq(["date"])
    end
  end

  context '#print_statement' do
    let(:client) { double :Client }

    it 'populates the rows with client date' do
      allow(client).to receive(:date) { ["date"] }
      statement = Statement.new(client)

      expect(subject.print_statement).to eq(["date"])
    end
  end
end
