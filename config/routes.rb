Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :monuments do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:destroy]
end
