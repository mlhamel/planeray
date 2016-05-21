module EventsTasks
  extend self
  extend Rake::DSL

  namespace :events do
    desc 'Dump current events into the database'
    task dump: :environment do
      DumpEventsJob.perform_later
    end
  end
end
