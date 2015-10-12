class StationsController < ApplicationController

  def index
  	@stations = Station.all
    if @current_user
      @user = current_user
      @favorite_stations = @user.stations 
    end
  end

  def show
  	@stationNorthLines = []
    @stationSouthLines = []
  	@stationNorthTimes = {}
    @stationSouthTimes = {}

  	@wantedStation = Station.friendly.find(params[:id])
    @tip = Tip.new
    @tips = Tip.where(station_id: @wantedStation.id).order(:created_at).reverse

  	# get the specified station's info
    station = BartApi.station("stninfo", {orig: @wantedStation.abbreviation})

  	# drill down to the routes we need and append them to the array of routes
  	getLines(station, "north_routes")
  	getLines(station, "south_routes")

  	# go through each route's schedule and find the station and its associated time
  	getStationTimes(@stationNorthLines, "north")
    getStationTimes(@stationSouthLines, "south")
  end

end
