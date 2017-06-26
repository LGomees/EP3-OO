Rails.application.routes.draw do
  resources :series
  root 'home#index'
  resources :users
  get 'home' => 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
