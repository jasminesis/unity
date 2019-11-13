Rails.application.routes.draw do


  devise_for :users, controllers: { sessions: 'user/sessions', registrations: 'user/registrations' }

  resources :freetimes
  resources :schedules

  get '/games/add/:id' => 'games#add', as: 'game'
  get '/games/remove/:id' => 'games#remove', as: 'remove_game'
  resources :games



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#index'

  resources :users do
    resources :schedules, only: [:new]
  end

  get '/users/add/:id' => 'friends#create'
  delete '/users/delete/:id' => 'friends#destroy'
end