class NrelService

  def self.get_stations(location)
    response = Faraday.get("https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['api_key']}&l&location=#{location}&fuel_type=ELEC")
    parsed_response = JSON.parse(response.body, symbolize_names: true)
    parsed_response[:fuel_stations]
  end
end
