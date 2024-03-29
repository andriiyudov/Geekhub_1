Rails.application.routes.draw do

  root 'sessions#new'

  resources :weapons

  resources :users, only: [:show, :new, :create]

  get 'sign_up',  to: 'users#new',        as: :sign_up
  get 'sign_in',  to: 'sessions#new',     as: :sign_in
  get 'sign_out', to: 'sessions#destroy', as: :sign_out
  post 'create',  to: 'sessions#create',  as: :sessions

end
