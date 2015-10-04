Rails.application.routes.draw do
  resources :sensor_errors
  resources :smoke_levels
  resources :ambient_light_levels
  resources :heat_indices
  resources :humidities
  resources :temperatures
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


end
