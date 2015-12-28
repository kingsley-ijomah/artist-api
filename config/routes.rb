Rails.application.routes.draw do

  root to: 'api/artists#index'

  namespace :api do
    resources :albums, :artists
  end
end
