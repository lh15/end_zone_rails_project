class EventsController < ApplicationController
  skip_before_action :require_login, only: %i[get_location index show search sports concerts theatre chicago newyork losangeles]
  def get_location
    lat = params['lat']
    lon = params['lon']
    lat_lon = "#{params['lat']},#{params['lon']}"
    response = Geocoder.search(lat_lon).first
    @events = Event.includes(:venue).where('venues.state = ?', response.state).references(:venue)
    if @events[0].nil?
      @notInState  =  "Sorry, your state is kinda pathetic. Consider a move. 🤖"
      @state = nil
    else
      @state = response.state
    end
    @search = false
    puts @events.inspect
    render partial: 'local_events'
  end
    def index
        @events = Event.all 
        render 'index'
    end  

    def search
        @events = Event.search(params[:search])
        if @events == []
            @message = "Sorry, there are no events matching this search"
        else
            @search = true
        end     
        render partial: 'local_events'
    end
    
    def show
        @event = Event.find(params[:id])
        @tickets = Ticket.where(event_id:params[:id], sold:false)
        render 'show'
    end  
    def sports
        @category = "Sports"
        @events = Event.where(category_id:1)   
        render 'categories'
    end 
    
    def concerts
        @category = "Concerts"
        @events = Event.where(category_id:2)
        render 'categories'
    end 
    
    def theatre
        @category = "Theatre and Comedy"
        @events = Event.where(category_id:3)
        render 'categories'
    end  
    
    def newyork
        @category = "Events in New York"
        venues = Venue.where(city:"New York ")
        @events = Event.where(venue:venues)
        render 'categories'
    end 
    
    def chicago
        @category = "Events in Chicago"        
        venues = Venue.where(city:"Chicago")
        @events = Event.where(venue:venues)
        render 'categories'
    end   
    def losangeles
        @category = "Events in Los Angeles"        
        venues = Venue.where(city:"Los Angeles")
        @events = Event.where(venue:venues)
        render 'categories'
    end
    def newyorklist
        @category = "Events in New York"
        venues = Venue.where(city:"New York ")
        @events = Event.where(venue:venues)
        render 'list'
    end 
    
    def chicagolist
        @category = "Events in Chicago"        
        venues = Venue.where(city:"Chicago")
        @events = Event.where(venue:venues)
        render 'list'
    end   
    def losangeleslist
        @category = "Events in Los Angeles"        
        venues = Venue.where(city:"Los Angeles")
        @events = Event.where(venue:venues)
        render 'list'
    end  
    def eventlist
        @event = Event.find(params[:id])  
        render 'eventlist'   
    end            
end      


