class StationsController < ApplicationController
  def index
  	@stations = Station.all
  end

  def show
  	apiData = BartAPI.new()
  	@stationRoutes = []
  	@stationTimes = {}

  	@wantedStation = Station.find_by_id(params[:id])

  	# get the specified station's info, can replace mlbr with info from the params later on
  	station = apiData.station("stninfo", {orig: @wantedStation.abbreviation})

  	# drill down to the routes we need and append them to the array of routes
  	getRoutes(station, "north_routes")
  	getRoutes(station, "south_routes")

  	# go through each route's schedule and find the station and its associated time
  	@stationRoutes.each do |route|
  		@stationTimes["#{route}"] = []
  		routeSchedule = apiData.schedule("routesched", {route: route})
  		routeSchedule["root"]["route"]["train"].each do |train|
  			train["stop"].each do |stop|
  				if stop["station"].downcase == @wantedStation.abbreviation && stop["origTime"] != nil
  					@stationTimes["#{route}"].push(stop["origTime"])
  					break
  				end
  			end
  		end
  	end
  end

end
