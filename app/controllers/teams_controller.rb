class TeamsController < ApplicationController

  def create
    team = Team.create(team_params)
    if team.save
      redirect_to("/skills/mvc")
    else
      flash[:error] = "You missed something"
    end
  end



  private

  def team_params
    params.permit(:team_name,:state,:year_of_inception)
  end

end
