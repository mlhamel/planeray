class Dump10190
  def events
    response = client.get('/data.json')
    response.map do |data|
      Event.create!(**data)
    end
  end

  private

  def endpoint
    "http://127.0.0.1:8080"
  end

  def client
    @client ||= Faraday.new(url: ENDPOINT) do |connection|
      connection.request :url_encoded
      connection.adapter Faraday.default_adapter
    end
  end
end
