Rails.application.routes.draw do

  root to: "landing#index"
  resources :trap_cards
  resources :monsters
  resources :room_cards
  resources :tiles
  resources :characters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
