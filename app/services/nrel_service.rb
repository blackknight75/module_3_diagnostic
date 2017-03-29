class NrelService

  def get_sations
    binding.pry
    response = Faraday.get(https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?api_key=3mrZQX0Xi44FALU9lEVgfgPXiyiqMZN7AzvyMbxo&l&location=1617+Cole+Blvd+Golden+CO&fuel_type=ELEC)
  end
end
