module StationsHelper

	def getLines(station, lineDirection)
		if station["root"]["stations"]["station"][lineDirection] != nil
			if station["root"]["stations"]["station"][lineDirection]["route"].respond_to?("each")
				station["root"]["stations"]["station"][lineDirection]["route"].each do |line|
					@stationLines.push(line.gsub(/[^\d]/, ''))
				end
			else
				@stationLines.push(station["root"]["stations"]["station"][lineDirection]["route"].gsub(/[^\d]/, ''))
			end
		end
	end

	def getLineName(lineNumber)
		if lineNumber != nil
			Line.find_by_number(lineNumber)
		end
	end

end
