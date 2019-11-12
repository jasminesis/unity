class FriendsController < ApplicationController
  before_action :authenticate_user!

  def create
    @friend = Friend.new(friend_params)
  end


end