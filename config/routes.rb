Rails.application.routes.draw do
  resources :appointments, except: [:index]
  resources :doctors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :patients
  resources :appointments, only: [:show]
end
