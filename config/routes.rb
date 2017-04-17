Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show, :edit]
  resources :episodes, only: [:index, :show]
  resources :appearances

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'

  patch '/guests/:id', to: 'guests#update'



end
