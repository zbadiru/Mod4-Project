Rails.application.routes.draw do
resources :phones
resources :users
resources :orders
resources :join_tables
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
