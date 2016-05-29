class ContestantsController < ApplicationController
  before_action :set_contestant, only: [:show, :edit, :update, :add_points]

  # GET /contestants
  # GET /contestants.json
  def index
    @contestants = Contestant.all
  end

  # GET /contestants/1
  # GET /contestants/1.json
  def show
  end

  # GET /contestants/new
  def new
    @contestant = Contestant.new
  end

  # GET /contestants/1/edit
  def edit
  end

  # POST /contestants
  # POST /contestants.json
  def create
    @contestant = Contestant.new(contestant_params)

    respond_to do |format|
      if @contestant.save
        format.html { redirect_to @contestant, notice: 'Contestant was successfully created.' }
        format.json { render :show, status: :created, location: @contestant }
      else
        format.html { render :new }
        format.json { render json: @contestant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contestants/1
  # PATCH/PUT /contestants/1.json
  def update
    respond_to do |format|
      puts "DEBUGGGGGGG"
      puts params
      puts contestant_params
      if @contestant.update(contestant_params)
        format.html { redirect_to @contestant, notice: 'Contestant was successfully updated.' }
        format.json { render :show, status: :ok, location: @contestant }
      else
        format.html { render :edit }
        format.json { render json: @contestant.errors, status: :unprocessable_entity }
      end
    end
  end

  def add_points
    @episode_number = @contestant.episode_points.maximum(:episode_number).to_i + 1
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contestant
      @contestant = Contestant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contestant_params
      params.require(:contestant).permit(:name, :age, :occupation, episode_points_attributes: [:id, :episode_number, :scoring_rule_id])
    end
end
