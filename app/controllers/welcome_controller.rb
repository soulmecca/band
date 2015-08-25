class WelcomeController < ApplicationController
	def index
	end
	def search
		# puts = params['date']
		params['date']
	end

		date = params['date']

		@dates = Event.find_by(date: date)
		

	end




end