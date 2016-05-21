module Dump1090
  if Rails.application.config.use_dump1090_simulator
    class Client < DevelopmentClient; end
  else
    class Client < RemoteClient; end
  end
end
