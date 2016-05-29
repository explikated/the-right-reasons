class ChartsController < ApplicationController

  def points_per_episode
    if params[:team_id]
      team = Team.find params[:team_id]
      sum = 0
      render json: EpisodePoint.contestants(team.contestants.pluck(:id)).group(:episode_number).order(:episode_number).sum(:points).map { |x,y| { x => (sum += y)} }.reduce({}, :merge)
    elsif params[:league_id]
      league = League.find params[:league_id]
      render json: league.teams.map{ |team|
        sum = 0
        { name: team.user.name, data: EpisodePoint.contestants(team.contestants.pluck(:id)).group(:episode_number).sum(:points).map { |x,y| { x => (sum += y)} }.reduce({}, :merge)}
      }
    end
  end
end
