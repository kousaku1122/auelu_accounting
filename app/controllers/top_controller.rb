class TopController < ApplicationController
    def index
        @players = Player.all
    end
end