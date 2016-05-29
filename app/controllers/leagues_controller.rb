class LeaguesController < ApplicationController
  before_action :set_contestant, only: [:show]

  def index
    @leagues = League.all
  end

  def show
    @teams = @league.teams.sort_by(&:current_score).reverse!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contestant
      @league = League.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def league_params
      params.require(:league).permit(:name, :season_id)
    end
end