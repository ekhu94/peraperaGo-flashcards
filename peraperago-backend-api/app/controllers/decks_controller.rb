class DecksController < ApplicationController

    def index
        decks = Deck.all
        render json: decks
    end

    def show
        deck = Deck.find_by(id: params[:id])
        render json: deck
    end

    private

    def deck_params
        params.require(:deck).permit(:title)
    end

end