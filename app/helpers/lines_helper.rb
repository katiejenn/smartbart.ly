module LinesHelper

	def getStationName(stationAbbreviation)
		Station.find_by_abbreviation(stationAbbreviation)
	end

end
