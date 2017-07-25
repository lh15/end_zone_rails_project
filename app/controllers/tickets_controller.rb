class TicketsController < ApplicationController
    def create 
        user = User.find(session[:user_id])
        event = Event.find(params[:id])
        ticket = Ticket.new(ticket_params)
        if ticket.save
            redirect_to "/events/#{ event.id }"
        else
            flash[:errors] = ticket.errors.full_messages    
            redirect_to "/events/#{ event.id }"
        end 
    end
    def buy
        user = User.find(session[:user_id])
        ticket = Ticket.find(params[:ticket_id])
        ticket.update(buyer_id: user, date_purchased: DateTime.now, sold:true)
        redirect_to "/users/show"
    end 
    def add 
        event = Event.find(params[:id])
        if session[:cart].nil?
            session[:cart] = []
        end    
        session[:cart] += params[:selected_ticket]
        redirect_to '/cart'
    end

    def cart
        @tickets = [] 
        render 'cart'
    end     
    
    def destroy
        ticket = Ticket.find(params[:ticket_id])
        ticket.delete
        redirect_to "/users/show"
    end     
    private
        def ticket_params
            params.require(:ticket).permit(:price, :seat_number, :section).merge(seller: @logged_in_user, event: Event.find(params[:id]), sold: false)  
        end          
end
