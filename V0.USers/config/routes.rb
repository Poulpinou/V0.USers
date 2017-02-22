Rails.application.routes.draw do
  resources :contacts
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
  get 'contacts/sort/:type', to: "contacts#sort_type", as: "sort_contacts"

  #change role
  get 'role/:role/:id', to: "users#modif_role", as: "modif_role"

  #mails
  post 'contacts/:id', to: "contacts#switch_fav"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
