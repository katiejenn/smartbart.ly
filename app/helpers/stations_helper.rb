module StationsHelper

	def getRoutes(station, routeDirection)
		if station["root"]["stations"]["station"][routeDirection] != nil
			station["root"]["stations"]["station"][routeDirection]["route"].each do |route|
				@stationRoutes.push(route[/\d/])
			end
		end
	end

end
