class ChallengeUsersController < ApplicationController

  def index
  end

  def new
    @challenge = Challenge.find(params[:challenge_id])
    @challenge_user = ChallengeUser.new
    @friends_to_add = (current_user.friends - @challenge.users)
  end

  def create
    @challenge = Challenge.find(params[:challenge_id])
    @challenge_user = @challenge.challenge_users.new(challenge_user_params)

    if @challenge_user.save
      redirect_to new_challenge_challenge_user_path(@challenge)
    else
      render "challenge_users/new"
    end
  end

  def destroy

  end

  private

  def challenge_user_params
    params.require(:challenge_user).permit(:user_id)
  end

end
