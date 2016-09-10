class AcquireEventsJob < BaseJob
  def perform
    puts "Connecting to rtl_sdr..."
    puts "found #{items.count}"

    items.each do |item|
      if event = Event.from_json(item)
        puts "Created a new event for #{event.flight}"
      end
    end
  end

  private

  def items
    @items ||= client.latest_items
  end

  def client
    @client ||= Dump1090::Client.new
  end
end
