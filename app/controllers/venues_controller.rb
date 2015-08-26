class VenuesController < ApplicationController
	def index
		@venues = Venue.all
	end

	def new
		@venue = Venue.new
	end

	def create
		Venue.create(venue_params)
		redirect_to venues_path
	end

	def edit
		@venue = Venue.find(params['id'])
	end

	def show
		@venue = Venue.find(params['id'])
	end

	def update
		Venue.find(params['id']).update(venue_params)
		redirect_to venue_path
	end

	def destroy
		Venue.find(params['id']).destroy
		redirect_to venues_path
	end

	def newevent
		@event = Event.new
		if Venue.find(params['id']).family_friendly
			@groups = Group.where(explicit_lyric: false)
		else 
			@groups = Group.all
		end
	end

	private

		def venue_params
			params.require(:venue).permit(:name, :city, :state, :family_friendly)
		end

end