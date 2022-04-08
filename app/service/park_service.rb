class ParkService
  class << self
    def search_parks(location)
      
      response = conn.get('parks', {stateCode: location})
      parsed = parse(response)
    end

    private

    def conn
      Faraday.new(url: "https://developer.nps.gov/api/v1/", params: {api_key: ENV['parks_api_key']})
    end

    def parse(response)
      data = JSON.parse(response.body, symbolize_names: true)
    end
  end

end
