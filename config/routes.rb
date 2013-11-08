FlashcardsOnRails::Application.routes.draw do
  resources :decks
  
  root "decks#index"
end
