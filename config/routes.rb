FlashcardsOnRails::Application.routes.draw do
  resources :decks do
    resources :cards
  end
  
  root "decks#index"
end
