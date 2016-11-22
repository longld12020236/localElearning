Rails.application.routes.draw do
  get 'word/edit'

  get 'word/index'

  get 'word/show'

  get 'word/_word'

  root  'static_pages#home'
  get 'contact'   =>  'static_pages#contact'
  get 'signup'    =>  'users#new'
  get 'login'	  =>  'sessions#new'
  post 'login'	  =>  'sessions#create'
  delete 'logout' =>  'sessions#destroy'
  resources :users
end
