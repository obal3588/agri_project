Rails.application.routes.draw do
  resources :admins
  resources :plots
  devise_for :users
  resources :farms
  # do
  #   resources :plots
  # end

  root "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
