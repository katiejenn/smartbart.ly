class Line < ActiveRecord::Base
	serialize :stations,Array
end
