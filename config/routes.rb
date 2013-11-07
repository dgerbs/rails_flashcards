FlashcardsOnRails::Application.routes.draw do
  root "decks#index"

  get "/decks/:id" => "decks#show"
  # get "/decks" => "decks#index"
end
