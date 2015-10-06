class Tip < ActiveRecord::Base
	belongs_to :stations
	belongs_to :users
end
