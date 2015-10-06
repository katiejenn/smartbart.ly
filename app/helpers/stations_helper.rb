module StationsHelper

	def getRoutes(station, routeDirection)
		if station["root"]["stations"]["station"][routeDirection] != nil
			station["root"]["stations"]["station"][routeDirection]["route"].each do |route|
				@stationRoutes.push(route[/\d/])
			end
		end
	end

	def getRouteName(routeNumber)
		if routeNumber != nil
			Route.find_by_number(routeNumber)
		end
	end

end
