Rails.application.routes.draw do
  get '/log-in' => 'sessions#new'
  get '/auth/spotify/callback/', to: 'sessions#create'

  root to: 'tracks#index'

  resources :tracks, :only => [:index, :show]
end
