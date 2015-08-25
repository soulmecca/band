class WelcomeController < ApplicationController
	def index
	end
	def search
		
	end
	def searchresults
		@request = params['date']
	end

end