BasicUser::Application.routes.draw do
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
