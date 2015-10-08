class BartApiRequestWorker
	
	include Sidekiq::Worker
	include ApplicationHelper
	
	def perform
		# foo = 0
		OrigTime.destroy_all
		allLines = Line.all
		allLines.each do |line|
			lineTimes = BartApi.schedule("routesched", {route: line.number})
			lineTimes["root"]["route"]["train"].each do |train|
				train["stop"].each do |arrival|
					if arrival["origTime"] != nil
						OrigTime.create({value: Time.parse(arrival["origTime"]), line_number: line.number, station_id: Station.find_by_abbreviation(arrival["station"]).id, train_index: train["index"]})
						# puts foo += 1
					end
				end 
			end 
		end
	end

end