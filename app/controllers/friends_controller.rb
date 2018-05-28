class FriendsController < ApplicationController
  before_action :set_friend, only: :destroy
  def index
    @incoming = FriendRequest.where(friend: current_user)
    @friends = current_user.friends
    @friend_request = FriendRequest.new
  end

  def destroy
    current_user.remove_friend(@friend)
    redirect_to friends_path
  end

  private

  def set_friend
    @friend = current_user.friends.find(params[:id])
  end
end
