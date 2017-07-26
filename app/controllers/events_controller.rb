class EventsController < ApplicationController
  def get_location
    lat = params['lat']
    lon = params['lon']
    lat_lon = "#{params['lat']},#{params['lon']}"
    response = Geocoder.search(lat_lon).first
    puts response.state if response.present?
    @events = Event.includes(:venue).where('venues.state = ?', "NY").references(:venue)
    puts @events.inspect
    render html: @events.inspect
  end
    def index
        @events = Event.all 
        render 'index'
    end  
    
    def show
        @event = Event.find(params[:id])
        @tickets = Ticket.where(event_id:params[:id], sold:false)
        render 'show'
    end     

  def index
    @events = Event.all
    render 'index'
  end

  def show
    @event = Event.find(params[:id])
    render 'show'
  end
end
