RSpec.describe Event do
  before(:each) do
    Event.delete_all
  end

  let(:data) do
    {
      "hex": "400f0b",
      "flight": "TS880",
      "lat": 46.880710,
      "lon": -71.034147,
      "altitude": 38000,
      "track": 227,
      "speed": 441
    }
  end

  context '#from_json' do
    it 'creates new event' do
      expect { Event.from_json(data) }.to change { Event.count }.by(1)
    end
  end

  context '#recents' do
    it 'gets events created recently' do
      event = Event.create!(
        hex: "400f0b",
        flight: "TS880",
        lat: 46.880710,
        lon: -71.034147,
        track: 227,
        speed: 441
      )
      event.update!(last_seen: 30.minutes.ago)

      expect {
        Event.from_json(data)
      }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  context '.seen?' do

  end
end
