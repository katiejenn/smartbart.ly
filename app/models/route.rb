class Route < ActiveRecord::Base
	serialize :stations,Array
end
