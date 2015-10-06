class StationsController < ApplicationController
  def index
  	@stations = Station.all
  end

  def show
  	apiData = BartAPI.new()
  	@stationRoutes = []
  	@stationTimes = {}

  	# get the specified station's info, can replace mlbr with info from the params later on
  	station = apiData.station("stninfo", {orig: "mlbr"})

  	# drill down to the routes we need and append them to the array of routes
  	if station["root"]["stations"]["station"]["north_routes"] != nil
  		station["root"]["stations"]["station"]["north_routes"]["route"].each do |route|
  			@stationRoutes.push(route[/\d/])
  		end
  	end
  	if station["root"]["stations"]["station"]["south_routes"] != nil
  		station["root"]["stations"]["station"]["south_routes"]["route"].each do |route|
  			@stationRoutes.push(route[/\d/])
  		end
  	end

  	# go through each route's schedule and find the station and its associated time
  	@stationRoutes.each do |route|
  		@stationTimes["#{route}"] = []
  		routeSchedule = apiData.schedule("routesched", {route: route})
  		routeSchedule["root"]["route"]["train"].each do |train|
  			train["stop"].each do |stop|
  				if stop["station"].downcase == "mlbr" && stop["origTime"] != nil
  					@stationTimes["#{route}"].push(stop["origTime"])
  					break
  				end
  			end
  		end
  	end
  end

end
