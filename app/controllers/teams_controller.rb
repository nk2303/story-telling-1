class TeamsController < ApplicationController
    def index
        @teams = Team.all
    end

    def new
        @team = Team.new
    end

    def create
        params["team"]["teller_ids"].shift
        list_of_ids = params["team"]["teller_ids"].join(",")
        @team = Team.create(id_list: list_of_ids)
        redirect_to new_story_path(:team_id => @team.id)
    end

    def update
        @team = Team.find(params[:id])
    end

    private

        def team_params
            params.require(:team).permit(:teller_ids)
        end

end
