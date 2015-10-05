class WelcomeController < ApplicationController

	def index
		apiData = BartAPI.new()
		@station = apiData.station("stninfo", {orig: "mlbr"})
		# @data = apiData.station("stns", nil)
		# @data = apiData.schedule("routesched", {route: 1})		
		# @data = apiData.route("routes", nil)
		# render json: @data
	end
end
