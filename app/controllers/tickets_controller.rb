class TicketsController < ApplicationController
    def create 
        user = User.find(session[:user_id])
        event = Event.find(params[:id])
        ticket = Ticket.new(ticket_params)
        if ticket.save
            redirect_to "/users/show"
        else
            flash[:errors] = ticket.errors.full_messages    
            redirect_to "/events/#{ event.id }/tickets"
        end 
    end
    def buy
        user = User.find(session[:user_id])
        ticket = Ticket.find(params[:ticket_id])
        event = Event.find(params[:event_id])
        ticket.update(buyer_id: user, date_purchased: DateTime.now, sold:true)
        redirect_to "/users/show"
    end 
    
    def destroy
        ticket = Ticket.find(params[:ticket_id])
        ticket.delete
        redirect_to "/users/show"
    end     
    private
        def ticket_params
            params.require(:ticket).permit(:price, :seat_number, :section).merge(seller_id: user.id, event_id: event.id, sold: false)  
        end          
end
