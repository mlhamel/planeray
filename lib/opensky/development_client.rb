  module Opensky
    class DevelopmentClient
      # 0	icao24	string	Unique ICAO 24-bit address of the transponder in hex string representation.
      # 1	callsign	string	Callsign of the vehicle (8 chars). Can be null if no callsign has been received.
      # 2	origin_country	string	Country name inferred from the ICAO 24-bit address.
      # 3	time_position	float	Unix timestamp (seconds) for the last position update. Can be null if no position report was received by OpenSky within the past 15s.
      # 4	time_velocity	float	Unix timestamp (seconds) for the last velocity update. Can be null if no velocity report was received by OpenSky within the past 15s.
      # 5	longitude	float	WGS-84 longitude in decimal degrees. Can be null.
      # 6	latitude	float	WGS-84 latitude in decimal degrees. Can be null.
      # 7	altitude	float	Barometric or geometric altitude in meters. Can be null.
      # 8	on_ground	boolean	Boolean value which indicates if the position was retrieved from a surface position report.
      # 9	velocity	float	Velocity over ground in m/s. Can be null.
      # 10	heading	float	Heading in decimal degrees clockwise from north (i.e. north=0°). Can be null.
      # 11	vertical_rate	float	Vertical rate in m/s. A positive value indicates that the airplane is climbing, a negative value indicates that it descends. Can be null.
      # 12	sensors	int[]	IDs of the receivers which contributed to this state vector. Is null if no filtering for sensor was used in the request.
      def data
        {
          "states": [
            [
              "c051f0",
              "TSC363",
              "Canada",
              1494769290,
              1494769290,
              -73.6125,
              45.577,
              883.92,
              false,
              87.41,
              222.14,
              -4.55,
              [
                  -1408237419
              ],


              830.58,
              nil,
              false,
              false,
              0,
            ]
          ],
          "time": 1494769290
        }
      end

      def latest_items
        data[:states].map {|raw| State.new(*raw[0..12]) }
      end
    end
  end
