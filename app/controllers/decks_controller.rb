class DecksController < ApplicationController
  def index
    @decks = Deck.all
  end

  def show
    @deck = Deck.find(params[:id])
  end

  def new
    @deck = Deck.new
  end

  def create
    @deck = Deck.new(deck_params)
    if @deck.save
      redirect_to(@deck)
    else
      render :new
    end
  end

  def edit
    @deck = Deck.find(params[:id])
  end

  def update
    @deck = Deck.find(params[:id])
    if @deck.update(deck_params)
      redirect_to(@deck)
    else
      render :edit
    end
  end

  def destroy
    @deck = Deck.find(params[:id])
    if @deck.destroy
      redirect_to(@deck)
    else
      render :deck
    end
  end

protected

  def deck_params
    params.require(:deck).permit(:name)
  end
end
