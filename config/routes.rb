BasicUser::Application.routes.draw do
  # get "users/index"
  # 
  # get "users/show"
  # 
  # get "users/new"
  # 
  # get "users/edit"
  # 
  # get "users/create"
  # 
  # get "users/update"
  # 
  # get "users/destroy"

  resources :bands
  resources :events
  resources :gears
  resources :payments
  resources :projects
  resources :spaces
  resources :studios
  resources :users
  
  root :to => 'events#index'
end
