Rails.application.routes.draw do
  
  # *************************************************************
  # users routes
  # *************************************************************
  get '/users/login' => 'users#new' #show login page
  get '/success' => 'users#show' #showing a success page to check if login/reg works

  post '/users' => 'users#create'

  get '/users/logout' => 'users#logout'

  post '/users/login' => 'users#authenticate'

  get '/users/:id' => 'users#show' #show users upcoming events

  # *************************************************************
  # event routes
  # *************************************************************

  # /events   show events (by location, this is the landing page) i e root route
  # /events/:id     show single event and its tickets 
  #  

  # *************************************************************
  # ticket routes
  # *************************************************************

  # /events/:id/tickets post to create ticket
  # /events/:id/tickets/buy  ----  post to sell ticket
  # /events/:id/tickets/     destroy
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
