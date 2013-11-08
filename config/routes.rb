FlashcardsOnRails::Application.routes.draw do
  resources :decks do
    resources :cards, except: :index
  end
  
  root "decks#index"
end
