ActionController::Routing::Routes.draw do |map|
  map.logout 'logout', :controller => 'sessions', :action => 'destroy'
  map.login 'login', :controller => 'sessions', :action => 'new'
  map.about_us 'about_us', :controller => 'home', :action => 'about_us'
  map.contact_us 'contact_us', :controller => 'home', :action => 'contact_us'
  map.support 'support', :controller => 'home', :action => 'support'
  map.careers 'careers', :controller => 'home', :action => 'careers'

  map.resources :sessions

  map.resources :users

  map.resources :items
  
  map.resources :products

  map.resources :companies

  map.resources :stores

  map.resource :base

  map.resource :contents

  map.root :controller => 'home'
end
