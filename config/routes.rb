Rails.application.routes.draw do
  resources :users, only: [:show, :create]
  resources :dog_profiles
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

  get '/users/:id/dog_profiles/:id/eligible_profiles', to: 'dog_profiles#eligible_profiles'
  get '/users/:id/dog_profiles/:id/matches_profiles', to: 'dog_profiles#matches_profiles'
  post '/users/:id/decisions/make_decision/:id', to: 'decisions#create'
  get '/users/:id/decisions/decisions_made/:id', to: 'decisions#show'
  delete '/users/:id/decision_delete/:id', to: 'decisions#decision_delete'

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
