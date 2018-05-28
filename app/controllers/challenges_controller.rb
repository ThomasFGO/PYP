class ChallengesController < ApplicationController

  def index
    @review = Review.new
    @catches = challenge_users.catches.includes(:specie, :technic)


  end

  def show
  end

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = current_user.challenges.new(challenge_params)
    if @challenge.save
      redirect_to challenge_path(@challenge)
    else
      render "challenges/new"
    end
  end

  def update
  end

  def destroy
    @catch.destroy
    redirect_to root_path
  end

  private

  def set_challenge
    @challenge = Challenge.find(params[:id])
  end

  def challenge_params
    params.require(:challenge).permit(:name, :start_at, :end_at, :user_id, :created_at)
  end

end
