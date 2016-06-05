require 'spec_helper'

RSpec.describe DumpEventsJob do
  context '.perform' do
    let(:job) { DumpEventsJob.new }
    it 'creates 2 new events' do
      expect { job.perform }.to change { Event.count }.by(2)
    end
  end
end
