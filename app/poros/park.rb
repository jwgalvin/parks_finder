class Park
  attr_reader :name, :description, :directions, :monday, :park_count, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday

  def initialize(data, count)
    @park_count = count
    @name = data[:fullName]
    @description = data[:description]
    @directions = data[:directionsInfo]
    @monday = data[:operatingHours][0][:standardHours][:monday]
    @tuesday = data[:operatingHours][0][:standardHours][:monday]
    @wednesday = data[:operatingHours][0][:standardHours][:monday]
    @thursday = data[:operatingHours][0][:standardHours][:monday]
    @friday = data[:operatingHours][0][:standardHours][:monday]
    @satday = data[:operatingHours][0][:standardHours][:monday]
    @sunday = data[:operatingHours][0][:standardHours][:monday]
  end


end
