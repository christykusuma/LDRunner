class RacesController < ApplicationController
  before_action :set_race, only: [:show, :edit, :update, :destroy]


  # GET /races/1
  def show
  end

  # GET /races/new
  def new
    @race = Race.new
  end

  # GET /races/1/edit
  def edit
  end

  # POST /races
  def create
    @race = Race.new(race_params)
    Race.transaction do 
      @race.save
      UserRace.create( race_id: @race.id, user_id: @current_user.id)
    end
        respond_to do |format|
      if @race.id
        format.html { redirect_to @race, notice: 'Race was successfully created.' }
        format.json { render :show, status: :created, location: @race }
      else
        format.html { render :new }
        format.json { render json: @race.errors, status: :unprocessable_entity }
      end
  end
end

  # PATCH/PUT /races/1
  def update
    respond_to do |format|
      if @race.update(race_params)
        format.html { redirect_to @race, notice: 'Race was successfully updated.' }
        format.json { render :show, status: :ok, location: @race }
      else
        format.html { render :edit }
        format.json { render json: @race.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /races/1
  def destroy
    Race.transaction do
      @race.user_races.destroy_all
      @race.destroy
    end
    respond_to do |format|
      format.html { redirect_back fallback_location: :root, notice: 'Race was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_race
      @race = Race.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def race_params
      params.require(:race).permit(:name, :details, :date, :address, :city, :state, :distance, :latitude, :longitude)
    end
end
