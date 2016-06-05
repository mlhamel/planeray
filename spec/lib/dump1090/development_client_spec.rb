require 'spec_helper'

RSpec.describe Dump1090::DevelopmentClient do
  let(:client) { Dump1090::DevelopmentClient.new }

  context '.latest_items' do
    it 'returns data of the current planes' do
      expect(client.latest_items)
        .to eq([{
          flight: 'AC6542',
          latitude: 42,
          longitude: 42,
          altitude: 100,
          hex: '11',
          speed: 42,
          track: 'some content'
        },
        {
          flight: 'AC7890',
          latitude: 42,
          longitude: 42,
          altitude: 100,
          hex: '11',
          speed: 42,
          track: 'some content'
        }])
    end
  end
end
