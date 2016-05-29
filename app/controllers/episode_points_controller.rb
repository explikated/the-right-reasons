class EpisodePointsController < ApplicationController
  before_action :set_episode_point, only: [:show, :edit, :update, :destroy]

  # GET /episode_points
  # GET /episode_points.json
  def index
    @episode_points = EpisodePoint.all
  end

  # GET /episode_points/1
  # GET /episode_points/1.json
  def show
  end

  # GET /episode_points/new
  def new
    @episode_point = EpisodePoint.new
  end

  # GET /episode_points/1/edit
  def edit
  end

  # POST /episode_points
  # POST /episode_points.json
  def create
    @episode_point = EpisodePoint.new(episode_point_params)

    respond_to do |format|
      if @episode_point.save
        format.html { redirect_to @episode_point, notice: 'Episode point was successfully created.' }
        format.json { render :show, status: :created, location: @episode_point }
      else
        format.html { render :new }
        format.json { render json: @episode_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /episode_points/1
  # PATCH/PUT /episode_points/1.json
  def update
    respond_to do |format|
      if @episode_point.update(episode_point_params)
        format.html { redirect_to @episode_point, notice: 'Episode point was successfully updated.' }
        format.json { render :show, status: :ok, location: @episode_point }
      else
        format.html { render :edit }
        format.json { render json: @episode_point.errors, status: :unprocessable_entity }
      end
    end
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
