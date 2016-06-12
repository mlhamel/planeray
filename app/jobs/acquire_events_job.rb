class AcquireEventsJob < BaseJob
  def perform
    puts "Connecting to rtl_sdr..."
    puts "found #{latest_items.count}"
    latest_items.map do |item|
      event = Event.create!(**item.symbolize_keys)
      puts "Created a new event for #{event.flight}"
    end
  end

  private

  def latest_items
    client.latest_items
  end

  def client
    @client ||= Dump1090::Client.new
  end
end
