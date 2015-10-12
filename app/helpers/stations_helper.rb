module StationsHelper
	include ApplicationHelper

	def getLines(station, lineDirection)
		if station["root"]["stations"]["station"][lineDirection] != nil
			if station["root"]["stations"]["station"][lineDirection]["route"].respond_to?("each")
				station["root"]["stations"]["station"][lineDirection]["route"].each do |line|
					if lineDirection == "north_routes"
						@stationNorthLines.push(line.gsub(/[^\d]/, ''))
					elsif lineDirection == "south_routes"
						@stationSouthLines.push(line.gsub(/[^\d]/, ''))
					end
				end
			else
				if lineDirection == "north_routes"
					@stationNorthLines.push(station["root"]["stations"]["station"][lineDirection]["route"].gsub(/[^\d]/, ''))
				elsif lineDirection == "south_routes"
					@stationSouthLines.push(station["root"]["stations"]["station"][lineDirection]["route"].gsub(/[^\d]/, ''))
				end
			end
		end
	end

	def getLineName(lineNumber)
		if lineNumber != nil
			Line.find_by_number(lineNumber)
		end
	end

	def getStationTimes(station, direction)
		station.each do |line|
			if direction == "north"
				@stationNorthTimes["#{line}"] = []
			elsif direction == "south"
				@stationSouthTimes["#{line}"] = []
			end
			lineSchedule = OrigTime.where(station_id: @wantedStation.id, line_number: line).order(:train_index)
			lineSchedule.each do |arrival|
				if arrival.value > Time.now
					if direction == "north"
		 				@stationNorthTimes["#{line}"].push(arrival)
		 			elsif direction == "south"
		 				@stationSouthTimes["#{line}"].push(arrival)
		 			end
		 		end
	 		end
	  		#lineSchedule = BartApi.schedule("routesched", {route: line})
			# lineSchedule["root"]["route"]["train"].each do |train|
			# 	train["stop"].each do |stop|
			# 		if stop["station"] == @wantedStation.abbreviation && stop["origTime"] != nil
			# 			if direction == "north"
			# 				@stationNorthTimes["#{line}"].push(stop["origTime"])
			# 			elsif direction == "south"
			# 				@stationSouthTimes["#{line}"].push(stop["origTime"])
			# 			end
			# 			break
			# 		end
			# 	end
			# end
		end
	end

end
