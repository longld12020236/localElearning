Rails.application.routes.draw do

  resources :words
  root  'static_pages#home'
  get 'contact'   =>  'static_pages#contact'
  get 'signup'    =>  'users#new'
  get 'login'	    =>  'sessions#new'
  post 'login'	  =>  'sessions#create'
  delete 'logout' =>  'sessions#destroy'
  resources :users do
  	member do
  		get :following, :followers
  	end
  end
  resources :relationships, only: [:create, :destroy]
  resources :categories do
    resources :words, only: :index
  end
  resources :lessons

resources :categories do
    member do
        get :words
    end
end
end
