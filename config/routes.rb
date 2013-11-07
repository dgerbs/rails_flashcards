FlashcardsOnRails::Application.routes.draw do
  resources :decks
  
  root "decks#index"

  get "/decks/new" => "decks#new"
  get "/decks/:id" => "decks#show"
  
end
