require 'client'

RSpec.describe Client do
  context '#init' do
    it 'balance array starts with 0' do
      expect(subject.balance).to eq([0])
    end
    it 'initializes with an empty date array ' do
      expect(subject.date).to eq([])
    end
    it 'initializes with an empty debit array ' do
      expect(subject.debit).to eq([])
    end
    it 'initializes with an empty credit array ' do
      expect(subject.credit).to eq([])
    end
  end

  AMOUNT = 10
  DATE = 14/01/2012

  context '#update_credit' do
    it 'adds amount to credit array' do
      subject.update_credit(AMOUNT)
      expect(subject.credit).to eq([10])
    end
    it 'adds date to date array' do
      subject.update_credit(AMOUNT)
      expect(subject.date).to eq([DATE])
    end
    it 'calls credits_balance' do
      subject.update_credit(AMOUNT)
      expect(subject.balance).to eq([0, 10])
    end
  end

  context '#update_debit' do
    it 'adds amount to debit' do
      subject.update_debit(AMOUNT)
      expect(subject.debit).to eq([10])
    end
    it 'adds date to date array' do
      subject.update_debit(AMOUNT)
      expect(subject.date).to eq([DATE])
    end
    it 'calls debits_balance' do
      subject.update_debit(AMOUNT)
      expect(subject.balance).to eq([0, -10])
    end
  end
end
