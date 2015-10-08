class BartApiRequestWorker
	
	include Sidekiq::Worker
	include ApplicationHelper
	
	def perform
		foo = 0
		OrigTime.destroy_all
		allLines = Line.all
		allLines.each do |line|
			lineTimes = BartApi.schedule("routesched", {route: line.number})
			lineTimes["root"]["route"]["train"].each do |train|
				train["stop"].each do |stationAbbreviation|
					if stationAbbreviation["origTime"] != nil && Time.parse(stationAbbreviation["origTime"]) > Time.now 
						OrigTime.create({value: Time.parse(stationAbbreviation["origTime"]), line_number: line.number, station_id: Station.find_by_abbreviation(stationAbbreviation["station"]).id})
						puts foo += 1
					end
				end 
			end 
		end
	end

end