class PlayerController < ApplicationController
    def done
        @player = Player.find(params[:id])
        @player.update(payment: Date.today.month)
        @player.update(payment_date: Date.today)
        @players = Player.all
        redirect_to root_path
    end
end