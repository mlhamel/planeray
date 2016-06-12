module Dump1090
  class DevelopmentClient
    def latest_items
      [
        {
          flight: 'AC6542',
          lat: 42,
          lon: 42,
          altitude: 100,
          hex: '11',
          speed: 42,
          track: 'some content'
        },
        {
          flight: 'AC7890',
          lat: 42,
          lon: 42,
          altitude: 100,
          hex: '11',
          speed: 42,
          track: 'some content'
        },
      ]
    end
  end
end
