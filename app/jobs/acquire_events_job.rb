class AcquireEventsJob < BaseJob
  def perform
    Rake::Task['events:acquire'].invoke
  end
end
