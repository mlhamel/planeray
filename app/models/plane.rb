class Plane < ActiveRecord::Base
  has_many :events

  def self.from_json(data)
    Plane.find_or_create_by(flight: data[:flight])
  end

  def seen_today?
    events
      .where('last_seen >= ?', 1.day.ago)
      .any?
  end
end
