class FriendRequestsController < ApplicationController
  before_action :set_friend_request, except: [:index, :create]
  def index
    @incoming = FriendRequest.where(friend: current_user)
    @outgoing = current_user.friend_requests
  end

  def create
    begin
      friend = User.find_by_email!(friend_request_email)
    rescue
      redirect_to friends_path, alert: "This email address doesn't exist"
      return
    end

    @friend_request = current_user.friend_requests.new(friend: friend)

    if @friend_request.save
      redirect_to friends_path, notice: "Your request has been sent"
    else
      redirect_to friends_path, alert: @friend_request.errors.full_messages.join(', ')
    end

  end

  def update
    @friend_request.accept
    redirect_to friends_path
  end

  def destroy
    @friend_request.destroy
    head :no_content
  end

 private

  def set_friend_request
    @friend_request = FriendRequest.find(params[:id])
  end

  def friend_request_email
    params.dig(:friend_request, :email)
  end

end
