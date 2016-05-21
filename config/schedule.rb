#set :output, "/path/to/my/cron_log.log"

every 2.minutes do
  rake "events:dumps"
end
