Rails.application.routes.draw do

  root to: 'spotify_tracks#index'

  resources :spotify_tracks, :only => [:index, :show]
end
