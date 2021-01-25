Rails.application.routes.draw do
  # get 'articles/index'
  # get 'sessions/new'
  # get 'users/new'
  root 'articles#index'
  resources :users, only: [:index, :new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]

  get 'sign_in' => 'sessions#new', as: 'sign_in'
  get 'sign_out' => 'sessions#destroy', as: 'sign_out'
  get 'sign_up' => 'users#new', as: 'sign_up'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
