Rails.application.routes.draw do
  get 'artists/index'
  root to: 'artists#index'

  namespace :api do
    resources :albums, :artists
  end
end
