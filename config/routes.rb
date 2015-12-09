Rails.application.routes.draw do

  get 'signup'  => 'users#new'

  post '/register' => 'auth#register'

  # patch '/confirm' => 'auth#confirm'

  post '/login' => 'auth#login'

  post '/comments' => 'comments#create'

  get '/comments' => 'comments#index'

  get '/comments/new' => 'comments#new'

  delete '/logout/:id' => 'auth#logout'

  resources :comments

  resources :users

  resources :users, except: [:new, :edit]

  resources :books, except: [:new, :edit]
end
