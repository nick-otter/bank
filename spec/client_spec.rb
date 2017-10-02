require 'client'

RSpec.describe Client do
  context '#init' do
    it 'initializes with an empty balance array' do
      expect(subject.balance).to eq([])
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
end
