Rails.application.routes.draw do
  resources :sales
  resources :orders
  resources :stalls
  resources :products
  resources :farms
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
