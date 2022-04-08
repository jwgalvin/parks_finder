require 'rails_helper'

describe ParkService do
  let(:park_service) { ParkService}

  describe "search_parks service" do
    it "returns parks", :vcr do
      the_snazzer = park_service.search_parks("Co")
      expect(the_snazzer).to be_a(Hash)
      expect(the_snazzer[:data]).to be_a(Array)
      expect(the_snazzer[:data][0]).to have_key(:fullName)
      expect(the_snazzer[:data][0]).to have_key(:description)
      expect(the_snazzer[:data][0]).to have_key(:directionsInfo)
    end
  end
end
