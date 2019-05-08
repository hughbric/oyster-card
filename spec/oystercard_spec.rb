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

  describe '#tap functionality' do
    it 'is initially not in a journey' do
      expect(subject).not_to be_in_journey
    end

    it 'allows customer to tap-in' do
      expect(subject.tap_in).to be true
    end
  end
end
