class DevelopersController < ApplicationController
  before_action :set_developer, only: [:show, :edit, :update, :destroy]

  def devgames
    @developer_games = current_user.developer.games
  end
  # GET /developers
  # GET /developers.json
  def index
    @developers = Developer.all
  end

  # GET /developers/1
  # GET /developers/1.json
  def show
  end

  # GET /developers/new
  def new
    @developer = Developer.new
  end

  # GET /developers/1/edit
  def edit
  end

  # POST /developers
  # POST /developers.json
  def create
    @developer = Developer.new(developer_params)
    @developer.user = current_user

    respond_to do |format|
      if @developer.save
        format.html { redirect_to current_user.profile, notice: 'Developer was successfully created.' }
        format.json { render action: 'show', status: :created, location: current_user.profile}
      else
        format.html { render action: 'new' }
        format.json { render json: @developer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /developers/1
  # PATCH/PUT /developers/1.json
  def update
    @developer.user = current_user
    respond_to do |format|
      if @developer.update(developer_params)
        format.html { redirect_to @developer, notice: 'Developer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @developer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /developers/1
  # DELETE /developers/1.json
  def destroy
    @developer.destroy
    respond_to do |format|
      format.html { redirect_to developers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_developer
      @developer = current_user.developer
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def developer_params
      params.require(:developer).permit(:ssid, :tel, :developer_account_id)
    end
end
