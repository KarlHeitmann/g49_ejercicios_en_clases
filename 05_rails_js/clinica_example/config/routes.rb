Rails.application.routes.draw do
  resources :appointments
  resources :patients
  resources :physicians

  # MVC = Model View Controller
  
  get 'physicians_all_data', to: 'physicians#all_data_physician'#, format

  root 'physicians#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
