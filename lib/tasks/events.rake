require 'dump1090'

module EventsTasks
  extend self
  extend Rake::DSL

  namespace :events do
    desc 'Acquire current events into the database'
    task :acquire, :environment do
      puts "Connecting to rtl_sdr..."
      puts "found #{latest_items.count}"
      latest_items.map do |item|
        event = Event.create!(**item.symbolize_keys)
        puts "Created a new event for #{event.flight}"
      end
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
