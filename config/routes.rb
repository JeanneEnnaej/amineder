Rails.application.routes.draw do
  get 'stimulus/admin'
  get 'stimulus/amines'
  devise_for :users

  root to: "pages#home"
  resources :amines, only: %i(new create destroy) do
    get :search, on: :collection
    resources :reservations, only: :create
  end

  resources :reservations, only: [] do
    post :decline, on: :member
    post :accept, on: :member
  end

  get 'account/amines', to: 'amines#user_index'
  get 'account/reservations', to: 'reservations#user_index'
end
