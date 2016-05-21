class BaseJob < ActiveJob::Base
  queue_as :jobs
end
