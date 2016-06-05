class DumpEventsJob < BaseJob
  def perform
    Rails.logger.info 'Running DumpEventsJob...'

    latest_items.map { |item| Event.create!(**item) }

    Rails.logger.info 'done.'
  end

  private

  def latest_items
    client.latest_items
  end

  def client
    @client ||= Dump1090::Client.new
  end
end
