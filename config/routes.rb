Rails.application.routes.draw do
  resources :pins
  root 'pins#index'
  devise_for :users
  get 'home/about'
end
