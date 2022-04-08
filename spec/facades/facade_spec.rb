require "rails_helper"
describe ParkFacade do
  it "does the state_parks dance", :vcr do
    parks =  ParkFacade.state_parks('Co')
    expect(parks).to be_a(Array)
    parks.each do |park|
      expect(park).to be_a(Park)
    end
  end
end
