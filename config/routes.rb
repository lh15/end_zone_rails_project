Rails.application.routes.draw do
  root 'events#index'
  # *************************************************************
  # users routes
  # *************************************************************
  get '/users/login' => 'users#new' #show login page
  get '/success' => 'users#show' #showing a success page to check if login/reg works

  post '/users' => 'users#create'

  get '/users/logout' => 'users#logout'

  post '/users/login' => 'users#authenticate'

  get '/users/show' => 'users#show' #show users upcoming events
  

  # *************************************************************
  # event routes
  # *************************************************************
  get '/events/location' => 'events#get_location'
  get '/events' => 'events#index'   #show events (by location, this is the landing page) i e root route
  get '/events/:id' => 'events#show'     #show single event and its tickets 
  #  

  # *************************************************************
  # ticket routes
  # *************************************************************

  get '/cart' => 'tickets#cart'
  post '/events/:id/tickets/cart' => 'tickets#add'
  post '/events/:id/tickets' => 'tickets#create'
  post '/events/:event_id/tickets/:ticket_id/buy' => 'tickets#buy'
  post '/tickets/:ticket_id/remove' => 'tickets#remove'
  delete 'tickets/:ticket_id' => 'tickets#destroy'

  resources :charges
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
