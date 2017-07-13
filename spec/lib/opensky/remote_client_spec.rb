RSpec.describe Dump1090::RemoteClient do
  let(:client) { Opensky::RemoteClient.new }

  context '.latest_items' do
    it 'returns data of the current planes', vcr: { cassette_name: 'opensky/remote_client' } do
      expect(client.latest_items).to eq([{
        'hex' => '400f0b',
        'flight' => '',
        'lat' => 46.88071,
        'lon' => -71.034147,
        'altitude' => 38000,
        'track' => 227,
        'speed' => 441
      }])
    end
  end
end
