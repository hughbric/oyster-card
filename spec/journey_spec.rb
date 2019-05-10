require 'journey'

describe Journey do
  context do
    before(:each) do
      @station = double :station
      @new_journey = Journey.new(@station)
    end

    it 'is initially not in a journey' do
      expect(subject).not_to be_in_journey
    end

    it 'saves the entry station when starting a new journey' do
      expect(@new_journey.entry_station).to eq(@station)
    end
  end
end
