Rails.application.routes.draw do
  resources :heros
  root 'heros#index'
end
