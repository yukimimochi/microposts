Rails.application.routes.draw do
  root to: 'static_pages#home'
  get    'signup', to: 'users#new'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get    'setting' , to: 'sessions#edit'

  resources :users
  resources :sessions, only: [:new, :create, :destroy, :edit, :update]
end