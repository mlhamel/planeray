module Dump1090
  class RemoteClient
    def latest_data
      response = client.get('/data.json')
      response
    end

    private

    def endpoint
      "http://127.0.0.1:8080"
    end

    def client
      @client ||= Faraday.new(url: endpoint) do |connection|
        connection.request :url_encoded
        connection.adapter Faraday.default_adapter
      end
    end
  end
end
