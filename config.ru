# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application do

  resources :students, only: [:index, :new, :create]
  get '/students/:id', to: 'students#show', as: 'student'
end
