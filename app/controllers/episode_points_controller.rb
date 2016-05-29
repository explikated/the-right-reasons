class EpisodePointsController < ApplicationController
  before_action :set_episode_point, only: [:destroy]

  # GET /episode_points
  # GET /episode_points.json
  def index
    @episode_points_by_contestant = EpisodePoint.all.order(episode_number: :desc, contestant_id: :asc).group_by(&:contestant_id)
  end

  # DELETE /episode_points/1
  # DELETE /episode_points/1.json
  def destroy
    @episode_point.destroy
    respond_to do |format|
      format.html { redirect_to episode_points_url, notice: 'Episode point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_episode_point
      @episode_point = EpisodePoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def episode_point_params
      params.fetch(:episode_point, {})
    end
end
