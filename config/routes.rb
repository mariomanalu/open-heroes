Rails.application.routes.draw do
  devise_for :users
  resources :heros
  resources :search, only: [:index]

  root 'heros#index'

  get '/disclaimer', to:'heros#disclaimer', as:'disclaimer'
  get'/contact', to:'heros#contact', as:'contact'
  get'/about', to:'heros#about', as:'about'
  get '/thisisadmin', to:'heros#thisisadmin', as:'thisisadmin'
end
