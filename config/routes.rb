Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch '/capture', to: 'pokemons#capture'
  patch '/damage', to: 'pokemons#damage'
  resources :pokemons
  post '/pokemons/new', to: 'pokemons#new'
end
