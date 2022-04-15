Rails.application.routes.draw do
  devise_for :users
  resources :heros
  root 'heros#index'
end
