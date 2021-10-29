Rails.application.routes.draw do
  get 'products/index'
  get 'products/new'

  post 'products', to: 'products#create', as: 'product'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'products#index'
end
