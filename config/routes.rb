Rails.application.routes.draw do
  # *************************************************************
  # users routes
  # *************************************************************
  get '/users/login' => 'users#new' #show login page

  post '/users' => 'users#create'

  get '/users/logout' => 'users#logout'

  post '/users/login' => 'users#authenticate'

  get '/users/show' => 'users#show' #show users upcoming events
  

  # *************************************************************
  # event routes
  # *************************************************************

  # /events   show events (by location, this is the landing page) i e root route
  # /events/:id     show single event and its tickets 
  #  

  # *************************************************************
  # ticket routes
  # *************************************************************
  
  post '/events/:id/tickets' => 'tickets#create'
  post '/events/:event_id/tickets/:ticket_id/buy' => 'tickets#buy'
  delete '/events/:event_id/tickets/:ticket_id' => 'tickets#destroy'
  # 


  # *************************************************************
  # category routes
  # *************************************************************

  # just gets

  # *************************************************************
  # sub_category routes
  # *************************************************************

  # just gets

  # *************************************************************
  # venue routes
  # *************************************************************

  # just gets

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
