Rails.application.routes.draw do
  get 'comments/create'
  get 'votes/index'
  get 'categories/index'
  # get 'articles/index'
  # get 'sessions/new'
  # get 'users/new'
  root 'articles#index'
  resources :users, only: [:index, :new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :articles do
    resources :votes, only: [:create, :destroy]
  end
  resources :categories

  get 'sign_in' => 'sessions#new', as: 'sign_in'
  get 'sign_out' => 'sessions#destroy', as: 'sign_out'
  get 'sign_up' => 'users#new', as: 'sign_up'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
