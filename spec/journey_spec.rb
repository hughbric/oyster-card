require 'journey'

describe Journey do
let(:station) { double :station, zone: 1}

  it 'knows if a journey is not complete' do
    expect(subject).not_to be_complete
  end

  it 'has a penalty fare by default' do
    expect(subject.fare).to eq Journey::PENALTY_FARE
  end

  it "returns itself when exiting a journey" do
    expect(subject.finish(station)).to eq(subject)
  end

  context do
    before(:each) do
      @new_journey = Journey.new(station)
    end

    it 'saves the entry station when starting a new journey' do
      expect(@new_journey.entry_station).to eq(station)
    end

    # it 'saves the exit station when end_journey is called' do
    #   @new_journey.end_journey(@station)
    #   expect(@new_journey.exit).to eq(@station)
    # end
  end
end
