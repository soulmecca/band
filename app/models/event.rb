class Event < ActiveRecord::Base
	belongs_to :venue
	belongs_to :group

end
