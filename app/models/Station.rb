class Station
attr_reader :station_name, :station_address, :fuel_types, :access, :distance
  def initialize(params)
    @station_name = params[:station_name]
    @station_address = get_address(params)
    @fuel_types = params[:fuel_type_code]
    @distance = params[:distance]
    @access = params[:access_days_time]
  end

  def self.get_stations(location)
    all_stations = NrelService.get_stations(location)
    all_stations.map do |station|
      Station.new(station)
    end
  end

  def get_address(station)
    (station[:street_address] + " " + station[:city] + ", " + station[:state] + " " + station[:zip])
  end
end
