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

  resources :users
  root :to => 'users#index'
end
