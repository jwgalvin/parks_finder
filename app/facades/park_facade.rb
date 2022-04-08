class ParkFacade
  #class << self
    def self.state_parks(location)
      #binding.pry
      json = ParkService.search_parks(location)
      number = json[:total]
      json[:data].map {|data| Park.new(data, number)}
    end
  #end
end
