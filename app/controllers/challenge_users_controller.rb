class ChallengeUsersController < ApplicationController

  def index
  end

  def new
    @challenge = Challenge.find(params[:challenge_id])
    @challenge_user = ChallengeUser.new
  end

  def create

  end

  def destroy
  end

  private

  # def set_challenge_user
  #   @challenge_user = ChallengeUser.find(params[:id])
  # end

end
