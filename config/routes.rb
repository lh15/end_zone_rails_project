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

  get '/users/:id/edit' => 'users#edit' #sends to user profile update page

  patch '/users/:id' => 'users#update' #processes the changes to user profile.
  
  # *************************************************************
  # event routes
  # *************************************************************
  get '/events/location' => 'events#get_location'
  get '/events' => 'events#index'   #show events (by location, this is the landing page) i e root route
  get '/events/search' => 'events#search'
  get '/events/sports' => 'events#sports'
  get '/events/concerts' => 'events#concerts'
  get '/events/theatre' => 'events#theatre'
  get '/events/newyork' => 'events#newyork'
  get '/events/chicago' => 'events#chicago'
  get '/events/losangeles' => 'events#losangeles'
  get '/events/newyork/list' => 'events#newyorklist'
  get '/events/chicago/list' => 'events#chicagolist'
  get '/events/losangeles/list' => 'events#losangeleslist'  
  get '/events/:id' => 'events#show'     #show single event and its tickets
  get '/events/:id/list' => 'events#eventlist'
  #  

  # *************************************************************
  # ticket routes
  # *************************************************************

  get '/cart' => 'tickets#cart'
  post '/events/:id/tickets/cart' => 'tickets#add'
  post '/events/:id/tickets' => 'tickets#create'
  post '/events/:event_id/tickets/:ticket_id/buy' => 'tickets#buy'
  post '/tickets/:ticket_id/remove' => 'tickets#remove'
  get '/tickets/:ticket_id/edit' => 'tickets#edit'
  post '/tickets/:ticket_id' => 'tickets#update'
  delete '/tickets/:ticket_id' => 'tickets#destroy'

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
