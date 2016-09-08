class AcquireEventsJob < BaseJob
  def perform
    items = client.latest_items

    puts "Connecting to rtl_sdr..."
    puts "found #{items.count}"

    items.map do |item|
      event = Event.create!(**item.symbolize_keys)
      puts "Created a new event for #{event.flight}"
    end
  end

  private

  def client
    @client ||= Dump1090::Client.new
  end
end
