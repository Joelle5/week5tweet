Rails.application.routes.draw do
  devise_for :users

  #authenticated :user do
    #root to: "pages#home"
  #end

  #unauthenticated :user do
    #root 'pages#index'
  #end

  resources :posts

  root 'posts#index'

  #get 'profile', to: 'users#show'

  #get '/index' =>'pages#index'

  #get '/home' => 'pages#home'
  #get 'pages/home'
  #get '/user/:id' => 'pages#profile'
  #get '/explore' => 'pages#explore'
  #get '/posts/new' => 'pages#profile'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
