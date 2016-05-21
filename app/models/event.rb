class Event < ActiveRecord::Base
  def self.from_data!(entry)
    create!(**entry)
  end
end
