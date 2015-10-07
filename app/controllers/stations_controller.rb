class StationsController < ApplicationController

  def index
  	@stations = Station.all
  end

  def show
  	@stationLines = []
  	@stationTimes = {}

  	@wantedStation = Station.friendly.find(params[:id])
    @tip = Tip.new
    @tips = Tip.where(station_id: @wantedStation.id).order(:created_at).reverse

  	# get the specified station's info, can replace mlbr with info from the params later on
    station = BartApi.station("stninfo", {orig: @wantedStation.abbreviation})

  	# drill down to the routes we need and append them to the array of routes
  	getLines(station, "north_routes")
  	getLines(station, "south_routes")

  	# go through each route's schedule and find the station and its associated time
  	@stationLines.each do |line|
  		@stationTimes["#{line}"] = []
      lineSchedule = BartApi.schedule("routesched", {route: line})
  		lineSchedule["root"]["route"]["train"].each do |train|
  			train["stop"].each do |stop|
  				if stop["station"] == @wantedStation.abbreviation && stop["origTime"] != nil
  					@stationTimes["#{line}"].push(stop["origTime"])
  					break
  				end
  			end
  		end
  	end
  end
end
