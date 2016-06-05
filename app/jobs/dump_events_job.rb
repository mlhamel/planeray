class DumpEventsJob < BaseJob
  def perform
    Rails.logger.info 'Running DumpEventsJob...'
    each_item do |item|
      event = Event.create!(**item)
      Rails.logger.info "Saved event #{event.id} from flight #{event.flight} at #{event.latitude}/#{event.longitude}"
    end
    Rails.logger.info 'done.'
  end

  private

  def each_item
    latest_items.each do |item|
      yield item
    end
  end

  def latest_items
    client.latest_items
  end

  def client
    @client ||= Dump1090::Client.new
  end
end
