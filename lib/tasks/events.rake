module EventsTasks
  extend self
  extend Rake::DSL

  namespace :events do
    desc 'Dump current events into the database'
    task dump: :environment do
      client.latest_data.each do |entry|
        event = Event.from_data!(entry)
        log_event(event)
      end
    end
  end

  private

  def client
    @client ||= Dump1090::Client.new
  end

  def log_event(event)
    puts "Saved event #{event.id} from flight #{event.flight} at #{event.latitude}/#{event.longitude}"
  end
end
