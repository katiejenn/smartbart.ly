class User < ActiveRecord::Base
	has_secure_password
	has_many :tips
	has_many :favorite_stations
	has_many :stations, :through => :favorite_stations

	def self.confirm(params)
		@user = User.find_by({email: params[:email]})
		@user.try(:authenticate, params[:password])
	end
end
