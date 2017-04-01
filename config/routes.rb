Rails.application.routes.draw do
  resources :galleries
  devise_for :users
  root "galleries#index"
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
