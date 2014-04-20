class GameRatesController < ApplicationController
  before_action :set_game_rate, only: [:show, :edit, :update, :destroy]

  # GET /game_rates
  # GET /game_rates.json
  def index
    @game_rates = GameRate.all
  end

  # GET /game_rates/1
  # GET /game_rates/1.json
  def show
  end

  # GET /game_rates/new
  def new
    @game_rate = GameRate.new
  end

  # GET /game_rates/1/edit
  def edit
  end

  # POST /game_rates
  # POST /game_rates.json
  def create
    @game_rate = GameRate.new(game_rate_params)

    respond_to do |format|
      if @game_rate.save
        format.html { redirect_to @game_rate, notice: 'Game rate was successfully created.' }
        format.json { render action: 'show', status: :created, location: @game_rate }
      else
        format.html { render action: 'new' }
        format.json { render json: @game_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_rates/1
  # PATCH/PUT /game_rates/1.json
  def update
    respond_to do |format|
      if @game_rate.update(game_rate_params)
        format.html { redirect_to @game_rate, notice: 'Game rate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @game_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_rates/1
  # DELETE /game_rates/1.json
  def destroy
    @game_rate.destroy
    respond_to do |format|
      format.html { redirect_to game_rates_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_rate
      @game_rate = GameRate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_rate_params
      params.require(:game_rate).permit(:game_id, :game_play, :graphic, :story, :total)
    end
end
