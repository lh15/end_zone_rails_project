class EventsController < ApplicationController
    def index
        @events = Event.all 
        render 'index'
    end  
    
    def show
        @event = Event.find(params[:id])
        render 'show'
    end     

end
