Rails.application.routes.draw do
  resources :ideas
  root 'home#index'

  #retour à l'acceuil
  get 'home/index'
  get 'home/show'

  resources :users
  get 'profile/:id', to: "users#show", as: "profile"

  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
