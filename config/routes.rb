Rails.application.routes.draw do
  devise_for :users
  root to: "offers#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :offers, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    get 'my_offers', on: :collection
    resources :bookings, only: [:create]
    get 'create_booking', to: 'bookings#create_booking', as: 'create_booking'
    get 'just_booked', to: 'bookings#just_booked', as: 'just_booked'
  end
  resources :bookings, only: [:index]
end
