module ApplicationHelper

	class BartAPI
		include HTTParty
		self.base_uri 'api.bart.gov/api'

		def initialize()
			@options = { query: {cmd: '', key: 'MW9S-E7SL-26DU-VV8V'} }
		end

		def station(command, extraQuery)
			@options[:query][:cmd] = command
			if extraQuery != nil
				@options[:query] = @options[:query].merge(extraQuery)
			end
			self.class.get("/stn.aspx", @options)
		end

		def schedule(command, extraQuery)
			@options[:query][:cmd] = command
			if extraQuery != nil
				@options[:query] = @options[:query].merge(extraQuery)
			end
			self.class.get("/sched.aspx", @options)
		end

		def route(command, extraQuery)
			@options[:query][:cmd] = command
			if extraQuery != nil
				@options[:query] = @options[:query].merge(extraQuery)
			end
			self.class.get("/route.aspx", @options)
		end

	end
 
end
