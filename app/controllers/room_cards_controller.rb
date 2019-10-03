class RoomCardsController < ApplicationController
    def index
        @roomcards = RoomCard.all
        render json: @roomcards
    end
end
