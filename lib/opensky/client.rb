module Opensky
  if Rails.application.config.use_simulator
    class Client < DevelopmentClient; end
  else
    class Client < RemoteClient; end
  end
end
