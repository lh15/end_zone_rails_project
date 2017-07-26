class ChargesController < ApplicationController
     def new
        @amount = params[:total]
        @user = User.find(session[:user_id])
    end

    def create
     # Amount in cents
     @amount = 0
     @tickets = []
    session[:cart].each do |item|
        @tickets << Ticket.find(item)
    end
    
    @tickets.each do |ticket|
        @amount += ticket.price
        user = User.find(session[:user_id])
        ticket.update(buyer_id: user.id, date_purchased: DateTime.now)  
    end  

    session[:cart] = []

    customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
    )

     charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @amount.to_i*100,
        :description => 'Rails Stripe customer',
        :currency    => 'usd'
    )

    rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
    end
end
