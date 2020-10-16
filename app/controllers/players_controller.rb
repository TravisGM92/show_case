class PlayersController < ApplicationController
  def create
    team = Team.find(params[:team_id])
    player = team.players.create(player_params)
    if player.save
      redirect_to("/skills/mvc")
    end
  end

  private

  def player_params
    params.permit(:name, :height, :weight, :college, :home_state, :position)
  end
end
