class PerformersController < ApplicationController
    def show
        @performer = Performer.find(params[:id])
        @events = @performer.events_performers.all
        
    end     
end
