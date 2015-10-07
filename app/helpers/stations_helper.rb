module StationsHelper

	def getLines(station, lineDirection)
		if station["root"]["stations"]["station"][lineDirection] != nil
			station["root"]["stations"]["station"][lineDirection]["route"].each do |line|
				@stationLines.push(line[/\d/])
			end
		end
	end

	def getLineName(lineNumber)
		if lineNumber != nil
			Line.find_by_number(lineNumber)
		end
	end

end
