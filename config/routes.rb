Rails.application.routes.draw do

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/top' => 'homes#top'
  
  get 'posts/search' => 'posts#search'
  
  resources :users
  resources :posts do
    resources :reservations
    post 'reservations/confirm' => 'reservations#confirm'
    post 'reservations/back' => 'reservations#back'
    
  end
end
