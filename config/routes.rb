Static::Application.routes.draw do
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :sessions, :only=> [:new, :create, :destroy]
  resources :microposts, :only => [:create, :destroy]
  resources :relationships, :only => [:create, :destroy]
  get "users/new"
  match '/signup', :to => 'users#new'
  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  match '/signin',    :to => 'sessions#new'
  match '/signout',   :to=> 'sessions#destroy'
  root :to => 'pages#home'
end

