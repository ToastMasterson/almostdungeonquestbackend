class TrapCardsController < ApplicationController

    def index
        @traps = TrapCard.all
        render json: @traps
    end
end
