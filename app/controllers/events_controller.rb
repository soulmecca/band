class EventsController < ApplicationController
	def index
		@events = Event.all
	end

	def new

		@event = Event.new
	end

	def create
		date=params["event"]["date"]
		venue_id = params["event"]["venue_id"]
		if !Event.exists?(:date => date, :venue_id => venue_id)	
		Event.create(event_params)
		end
		# redirect_to events_path
		render inline: "<h1>Event already exists for #{date}</h1>", layout: 'application'
	end

	def show
		@event = Event.find(params[:id])
	end

	def edit
		@event = Event.find(params[:id])
	end

	def update
		event = Event.find(params[:id])
		event.update(event_params)
		redirect_to events_path
	end

	def destroy
		event = Event.find(params[:id])
		event.destroy
		redirect_to events_path
	end

	private

		def event_params
			params.require(:event).permit(:date, :alcohol_served, :venue_id, :group_id)
		end
end
