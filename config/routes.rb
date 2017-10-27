Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: "pages#profile"
  end

  unauthenticated :user do
    root 'pages#index'
  end

  get 'profile', to: 'users#show'

  get '/index' =>'pages#index'

  get '/home' => 'pages#home'
#get 'pages/home'
  get '/user/:id' => 'pages#profile'

  get '/explore' => 'pages#explore'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
