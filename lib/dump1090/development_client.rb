module Dump1090
  class DevelopmentClient
    def latest_data
      [
        {
          flight: 'AC6542',
          latitude: 42,
          longitude: 42,
          altitude: 100,
          hex: '11',
          speed: 42,
          track: 'some content'
        },
        {
          flight: 'AC7890',
          latitude: 42,
          longitude: 42,
          altitude: 100,
          hex: '11',
          speed: 42,
          track: 'some content'
        },
      ]
    end
  end
end
