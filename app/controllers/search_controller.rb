class SearchController < ApplicationController

  def index
    @stations = Station.get_stations(params["q"])
    binding.pry
  end
end
