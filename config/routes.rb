Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  get 'temperatures/' => 'temperature#index'
  get 'temperatures/create' => 'temperature#create'

  get 'humidities/' => 'humidity#index'
  get 'humidities/create' => 'humidity#create'

  get 'heatindices/' => 'heat_index#index'
  get 'heatindices/create' => 'heat_index#create'

  get 'sensor_errors/' => 'sensor_error#index'
  get 'sensor_errors/create' => 'sensor_error#create'

  get 'smoke_levels/' => 'smoke_level#index'
  get 'smoke_levels/create' => 'smoke_level#create'

  get 'ambient_light_levels' => 'ambient_light_level#index'
  get 'ambient_light_levels/create' => 'ambient_light_level#create'

end
