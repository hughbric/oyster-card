require 'oystercard'

describe Oystercard do
  it 'responds to balance' do
    expect(subject).to respond_to(:balance)
  end

  describe '#top_up' do
    it 'allows customer to top up' do
      expect(subject).to respond_to(:top_up).with(1).argument
    end

    it 'raises an error when topping up over the limit' do
      subject.top_up(Oystercard::MAXIMUM_BALANCE)
      expect{ subject.top_up(1) }.to raise_error "Top-up Limit Reached."
    end
  end
end
