Rails.application.routes.draw do
  resources :find_your_geeks
  devise_for :users
  root to: "offers#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :offers, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    get 'my_offers', on: :collection
    resources :bookings, only: [:create]
    get 'create_booking', to: 'bookings#create_booking', as: 'create_booking'
  end
  resources :bookings, only: [:index, :destroy]
  get 'bookings/:id/accept', to: 'bookings#accept', as: 'accept_booking'
  get 'bookings/:id/decline', to: 'bookings#decline', as: 'decline_booking'
end
