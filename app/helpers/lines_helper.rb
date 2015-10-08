module LinesHelper
	include ApplicationHelper

	def getStationByAbbreviation(stationAbbreviation)
		Station.find_by_abbreviation(stationAbbreviation)
	end

	def getStationById(stationId)
		Station.find_by_id(stationId)
	end

end
