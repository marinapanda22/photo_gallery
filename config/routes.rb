Rails.application.routes.draw do
  
  # get 'profiles/show'

  # get 'profiles/edit'
  get 'profiles_show/:id' => 'profiles#show', as: 'profiles_show'
  get 'profiles_edit/:id' => 'profiles#edit', as: 'profiles_edit'
  
  ActiveAdmin.routes(self)
  resources :profiles
  resources :galleries do
  	resources :notices
  end
  devise_for :users
  root "galleries#index"
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
