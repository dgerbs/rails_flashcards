class CardsController < ApplicationController
  def show
    @deck = Deck.find(params[:id])
    @card = @deck.cards.find(params[:id])
  end
end