Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :locations
  resources :trips
  resources :events
  resources :trip_locations

end
