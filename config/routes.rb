MovieApp::Application.routes.draw do

resources :movies

root 'movies#index'

get '/search'             => 'pages#search'

  # get "movies"             => "movies#index"
  # post "movies"            => "movies#create"
  # get "movies/new"         => "movies#new"
  # get "movies/:id"         => "movies#show"
  # get "movies/:id/edit"    => "movies#edit"
  # put "movies/:id"         => "movies#update"

end
