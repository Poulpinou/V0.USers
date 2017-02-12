Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
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

  #Manual update (temporary)
  get 'update/ranks', to: "application#update_ranks", as: "update_ranks"

  # Sort drop down
  get 'ideas/sort/:type', to: "ideas#sort_type", as: "sort_ideas"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
