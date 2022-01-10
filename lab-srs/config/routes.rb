Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :reports
  get 'home/about'
  root 'reports#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # get '/posts', to: 'posts#index'
  
  # get '/posts/:id', to: 'posts#show'
  
  # get '/posts/new', to: 'posts#new'
  
  # post '/posts', to: 'posts#create'
  
  # get '/posts/:id/edit', to: 'posts#edit'
  
  # put '/posts/:id', to: 'posts#update'
  
  # delete '/posts/:id', to: 'posts#destroy'

end
