require 'spec_helper'

RSpec.describe AcquireEventsJob do
  context '.perform' do
    let(:job) { AcquireEventsJob.new }
    it 'creates 2 new events' do
      expect { job.perform }.to change { Event.count }.by(2)
    end
  end
end
