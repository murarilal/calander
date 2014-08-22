Blog::Application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

  root to: "home#show"	
  #get "sessions/create"

  #get "sessions/destroy"

  #get "home/show"

  resources :articles
  #root to: 'articles#index'
end
