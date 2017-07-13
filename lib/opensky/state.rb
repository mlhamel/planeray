module Opensky
  State = Struct.new("State",
    :icao24,
    :callsign,
    :origin_country,
    :time_position,
    :time_velocity,
    :longitude,
    :latitude,
    :altitude,
    :on_ground,
    :velocity,
    :heading,
    :vertical_rate,
    :sensors,
  )
end
