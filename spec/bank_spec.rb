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
end
