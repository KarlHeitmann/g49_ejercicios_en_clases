Rails.application.routes.draw do
  resources :categories
  resources :movies

  get 'movies_test', to: 'movies#test', as: 'movies_test_link'

  root 'movies#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
