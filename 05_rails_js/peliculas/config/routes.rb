Rails.application.routes.draw do
  resources :categories
  resources :movies

  put 'category_movies/:id/add_percentage', to: 'category_movies#add_percentage', as: 'cm_add_percentage'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'movies#index'
end
