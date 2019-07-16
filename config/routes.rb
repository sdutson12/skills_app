Rails.application.routes.draw do
  devise_for :users
  root to: 'skills#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :skills do
    resources :bookings, only: :create
  end
  resources :bookings, only: [:index, :show] do
    resources :reviews, only: :create
  end
  namespace :admin do
    resources :bookings, only: [:index, :show]
  end
end
