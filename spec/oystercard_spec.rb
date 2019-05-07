require 'oystercard'

describe Oystercard do
  describe '#initialize' do
    it 'responds to Oystrcard with one argument' do
      expect(subject).to respond_to(:balance)
    end
  end

  describe '#top_up' do
    it 'allows us to top up the oyster' do
      amount = 20
      subject.top_up(20)
      expect(subject.top_up(amount)).to eq(40)
    end
  end
end
