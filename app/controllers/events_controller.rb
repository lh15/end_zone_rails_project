class EventsController < ApplicationController
    def index
        @events = Event.all 
        render 'index'
    end  
    
    def show
        @event = Event.find(params[:id])
        @tickets = Ticket.where(event_id:params[:id], sold:false)
        render 'show'
    end     

end
