class Venue < ActiveRecord::Base
	has_many :events, dependent: :destroy
	has_many :groups, through: :events
end
