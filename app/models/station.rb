class Station < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: :slugged

	has_many :tips
	has_many :favorite_stations
	has_many :users, :through => :favorite_stations
end
