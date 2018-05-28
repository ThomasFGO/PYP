class ChallengeUsersController < ApplicationController

  def index
  end

  def new
  end

  def destroy
  end

  private

  def set_challenge_user
    @challenge_user = ChallengeUser.find(params[:id])
  end

end
