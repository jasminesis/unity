class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  # GET /games
  # GET /games.json
  def index
    thesearch = params[:search]
    if thesearch != nil
    thesearch = thesearch.downcase
    @games = Game.where(["lower(name) LIKE ?", "%#{thesearch}%"])
    else 
    @games = Game.all
    end

    if user_signed_in?
    # # get all your friends in an array
      @friend_a = Friend.where(:user_id => current_user.id).map{|x|x.friend_user_id}
      @friend_b = Friend.where(:friend_user_id => current_user.id).map{|x|x.user_id}
      @list = @friend_a.concat(@friend_b)
      @friends = User.where("id IN (?)",@list)
    end


  end

  # GET /games/1
  # GET /games/1.json
  def show
  end

  # GET /games/new
  def new
    @game = Game.new
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(game_params)

    respond_to do |format|
      if @game.save
        format.html { redirect_to @game, notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
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
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: 'Game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add
    # @game = Game.add(game_params)
    # @game = Game.find(params[:id])
    @game_user = GamesUser.new(:user_id => current_user.id, :game_id => params[:id])
    # check if already has it!
    @relationship = GamesUser.where(user_id: current_user.id, game_id: params[:id])
    if @relationship.length > 0
    else
    if @game_user.save
      redirect_to games_path
    else
      redirect_to games_path
    end
  end
  end


  def remove
    # @game = Game.add(game_params)
    # @game = Game.find(params[:id])
    # @game_user = GamesUser.new(:user_id => current_user.id, :game_id => params[:id])
    @relationship = GamesUser.where(user_id: current_user.id, game_id: params[:id])
    if @relationship.length > 0
    @relationship[0].destroy
    end
    # render plain: @relationship.inspect
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
      params.fetch(:game, {})
    end
end