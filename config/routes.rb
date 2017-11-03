Rails.application.routes.draw do
  root 'sessions#home'
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  get 'sessions/new', to: 'users#show'
  
  resources :users, only: [:new, :create, :show, :edit]
  
  get '/profile', to: 'users#show'
  get '/profile/edit', to: 'users#edit'
  patch '/profile', to: 'users#update'
  get 'dogs/:id/edit', to: 'dogs#edit', as: 'edit'


  resources :dogs, only: [:new, :create, :destroy, :index, :show, :update]
  patch '/dogs/:id/adopt', to: 'dogs#adopt', as: 'adopt'

end
