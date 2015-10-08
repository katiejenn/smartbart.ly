module LinesHelper
	include ApplicationHelper

	def getStationNameByAbbreviation(stationAbbreviation)
		Station.find_by_abbreviation(stationAbbreviation)
	end

	def getStationNameById(stationId)
		Station.find_by_id(stationId)
	end

end
