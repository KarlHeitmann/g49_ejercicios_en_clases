Rails.application.routes.draw do
  devise_for :users
  resources :categories do
    resources :movies
  end


  get 'movies_test', to: 'movies#test', as: 'movies_test_link'

  root 'categories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
