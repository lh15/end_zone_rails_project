class EventsController < ApplicationController
  skip_before_action :require_login, only: %i[get_location index show]
  def get_location
    lat = params['lat']
    lon = params['lon']
    lat_lon = "#{params['lat']},#{params['lon']}"
    response = Geocoder.search(lat_lon).first
    @state = response.state if response.present?
    @events = Event.includes(:venue).where('venues.state = ?', response.state).references(:venue)
     
    puts @events.inspect
    render partial: 'local_events'
  end
    def index
        @events = Event.all 
        render 'index'
    end  

    def search
        @events = Event.search(params[:search])
        puts @events.inspect
        render partial: 'local_events'
    end
    
    def show
        @event = Event.find(params[:id])
        @tickets = Ticket.where(event_id:params[:id], sold:false)
        render 'show'
    end     
end      


