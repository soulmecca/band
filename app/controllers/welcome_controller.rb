class WelcomeController < ApplicationController
	def index
	end
	def search
		# puts = params['date']
		params['date']
	end

	def searchresults
		date = params['date']
		@events = Event.where(date:date)
	end


end