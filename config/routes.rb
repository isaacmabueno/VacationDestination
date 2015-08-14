Rails.application.routes.draw do


  #docs.railsbridge.org/intro-to-rails/setting_the_default_page
  #root - or landing page
  root 'destinations#index'


  #destinations
  get 'destinations/index' => 'destination#index'
  get 'destinations/new' => 'destination#new'
  post 'destinations/create' => 'destinations#create'
  post 'destinations/update' => 'destinations#update'
  patch 'destinations/delete' => 'destinations#delete'
  get 'destinations/confirmation' => 'destinations#confirmation'


  #sessions - login/logout

  get 'sessions/login' => 'sesssions#login'
  post 'sessions/login_confirmation' => 'sessions#confirmation'
  get 'sessions/logout' => 'sessions#logout'

  #registration
  #hhtp verb - 2nd pary is the local 'resource/route' route name and they get mapped to a controller method
  get 'users/register' => 'users#signup'
  post 'users/confirmation' => 'users#confirmation'
end
