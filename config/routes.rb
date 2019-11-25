Rails.application.routes.draw do
  resources :admins
  devise_for :users
  resources :farms do
    resources :fields
  end
  get "/admin/makeemp", to: "admins#makeEmp"
  root "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
