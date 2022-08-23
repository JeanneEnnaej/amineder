Rails.application.routes.draw do
  get 'reservations/create'
  get 'reservations/decline'
  get 'reservations/accept'
  get 'reservations/user_index'
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
