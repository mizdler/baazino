class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  def download
    @game = Game.find(params[:id])
    Purchase.create(:game => @game, :price=> @game.price, :user=> current_user)
    redirect_to @game.install_file.url
  end

  def upvote
      @game = Game.find(params[:id])
      @game.liked_by current_user
      redirect_to @game
  end

  def downvote
    @game = Game.find(params[:id])
    @game.downvote_from current_user
    redirect_to @game
  end

  def all_downloaded

  end
  # GET /games
  # GET /games.json
  def index
    if !params[:search]
      @games = Game.all
      @isFirstPage = true
    else
      @games = Game.search(params[:search]).order("created_at DESC")
      @isFirstPage = false
    end

  end

  # GET /games/1
  # GET /games/1.json
  def show
    @game = Game.find params[:id]
    @comment = @game.comments.new
  end

  # GET /games/new
  def new
    @game = Game.new
    @game.build_review
  end

  # GET /games/1/edit
  def edit
      if !user_signed_in?
        redirect_to action: :index
      end
  end

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(game_params)
    @game.developer = current_user.developer
    @game_rate = GameRate.new()
    @game_rate.game = @game

    respond_to do |format|
      if @game.save and @game_rate.save
        format.html { redirect_to @game, notice: 'Game was successfully created.' }
        format.json { render action: 'show', status: :created, location: @game }
      else
        format.html { render action: 'new' }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to @game, notice: 'Game was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.require(:game).permit(:game_name, :version, :create_date, :release_date, :description, :developer_id, :game_info_id, :game_genre_id, :review_id, :price, :install_file, :platform, :support_version, :content, :cover_photo)
    end


end
