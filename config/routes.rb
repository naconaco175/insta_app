Rails.application.routes.draw do
  
  root 'static_pages#home'
  get '/service_rule', to:  'static_pages#service_rule'
  get '/contact',      to:  'static_pages#contact'
  get '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get '/login',  to: 'sessions#new'
  post '/login',  to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers, :favorites
    end
  end
  resources :account_activations, only:[:edit]
  resources :password_resets,     only:[:new, :create, :edit, :update]
  resources :microposts,          only:[:new, :create, :destroy] do
    resource :favorites, only: [:create, :show, :destroy]
  end
  resources :relationships,       only: [:create, :destroy]
end
