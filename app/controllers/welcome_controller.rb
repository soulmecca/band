class WelcomeController < ApplicationController
	def index
	end
	def search
		# puts = params['date']
		params['date']
	end

	def searchresults
		date = params['date']
		@dates = Event.find_by(date: date)

	end




end