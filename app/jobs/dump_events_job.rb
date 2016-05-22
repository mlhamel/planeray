class DumpEventsJob < BaseJob
  def perform
    client.latest_data.each do |entry|
      event = Event.from_data!(entry)
      log_event(event)
    end
  end

  private

  def client
    @client ||= Dump1090::Client.new
  end

  def log_event(event)
    Rails.logger.info "Saved event #{event.id} from flight #{event.flight} at #{event.latitude}/#{event.longitude}"
  end
end
