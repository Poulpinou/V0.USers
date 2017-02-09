Rails.application.routes.draw do
  resources :comments
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :ideas
  root 'home#index'

  #retour à l'acceuil
  get 'home/index'
  get 'home/show'

  resources :users
  get 'profile/:id', to: "users#show", as: "profile"
  get 'new_idea/:id', to: "ideas#new", as: "users_new_idea"

  #vote
  get 'vote/:id', to: "ideas#vote", as: "vote"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
