require 'spec_helper'

RSpec.describe Dump1090::Client do
  let(:client) { Dump1090::RemoteClient.new }

  context '.latest_data' do
    it 'returns data from the current planes', vcr: { cassette_name: 'dump10190/remote_client' } do
      response = client.latest_data
      expect(response.body).to eq([{
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
