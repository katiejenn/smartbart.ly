class Line < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: :slugged

	serialize :stations,Array

	# has_many :line_times
	# has_many :orig_times, :through => :line_times

	has_many :orig_times
end
