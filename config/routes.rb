Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: 'user/sessions', registrations: 'user/registrations' }

  resources :schedules

  resources :games



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
  get '/users' => 'users#index', as: 'users'
  get '/users/new' => 'users#new', as: 'new_user'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show' , as: 'user'
  get '/users/:id/edit' => 'users#edit', as: 'edit_user'
  patch '/users/:id' => 'users#update'
  delete '/users/:id' => 'users#destroy'

  get '/users/add/:id' => 'friends#create'
  delete '/users/delete/:id' => 'friends#destroy'
end