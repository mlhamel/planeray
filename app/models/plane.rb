class Plane < ActiveRecord::Base
  has_many :events

  def seen?
    events.any?
  end
end
