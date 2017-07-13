RSpec.describe Opensky::DevelopmentClient do
  context '.latest_items' do
    let(:client) { Opensky::DevelopmentClient.new }

    it 'returns data of the current planes' do
      expected_state = Opensky::State.new(
        "c051f0",
        "TSC363",
        "Canada",
        1494769290,
        1494769290,
        -73.6125,
        45.577,
        883.92,
        false,
        87.41,
        222.14,
        -4.55,
        [
          -1408237419
        ],
      )
      expect(client.latest_items).to eq([expected_state])
    end
  end
end
