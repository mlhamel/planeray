class Event < ActiveRecord::Base
  has_one :plane

  validate :validate_duplicate_events

  def self.from_json(data)
    create(**data.symbolize_keys)
  end

  def self.recents
    where("last_seen >= ?", 1.hour.ago)
  end

  def seen?
    Event.recents.where(flight: flight).count > 0
  end

  private

  def validate_duplicate_events
    return unless seen?

    errors.add(:last_seen, 'Plane was already seen')
  end
end
