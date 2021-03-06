Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => redirect('/playlists.json')
  resources :playlists do
    resources :words
  end

  resources :words

  get 'getapi', to: 'api#get_api'

end
