class Event < ActiveRecord::Base
  after_commit :log_event_creation, :on => :create

  def log_event_creation
    Rails.logger.info "Saved event #{hex} from flight #{flight} at #{lat}/#{lon}"
  end
end
