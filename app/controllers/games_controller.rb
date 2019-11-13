class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  # GET /games
  # GET /games.json
  def index
    @games = Game.all

    @current_id = current_user.id
    # get all your friends in an array
    @allfriends = Friend.where(user_id: current_user.id, status: "added").or(Friend.where(friend_user_id: current_user.id, status: "added"))
#  render plain: @allfriends.inspect
    # remove yourelf from the array?
   

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

    if @game_user.save
      redirect_to games_path
    else
      redirect_to games_path
    end
  end


  def remove
    # @game = Game.add(game_params)
    # @game = Game.find(params[:id])
    # @game_user = GamesUser.new(:user_id => current_user.id, :game_id => params[:id])
    @relationship = GamesUser.where(user_id: current_user.id, game_id: params[:id])
    @relationship[0].destroy
    # render plain: @relationship.inspect
      respond_to do |format|
        format.html { redirect_to games_url, notice: 'Game was successfully removed.' }
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
