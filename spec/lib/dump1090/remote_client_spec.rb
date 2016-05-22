require 'spec_helper'

RSpec.describe Dump1090::Client do
  let(:client) { Dump1090::RemoteClient.new }

  context 'latest_data' do
    it 'returns data from the current planes', vcr: { cassette_name: 'dump10190/remote_client' } do
      binding.pry
      expect(true).to be_truthy
    end
  end
end
