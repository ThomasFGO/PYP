class ChallengesController < ApplicationController
  before_action :set_challenge, only: [:show]

  def index
    @user = current_user
    @challenge = Challenge.new
    @challenges = Challenge.where(user_id: current_user)

    @ongoing_challenges = @user.challenges.count

  end

  def show
    @participants = @challenge.users
    @good_catches = Catch.where(user: @participants).where("created_at > ?", @challenge.start_at).where("created_at < ?", @challenge.end_at)

    @max_size = @good_catches.order(size: :desc)
    @count_total = @good_catches.group(:user_id).count.sort_by{ |k, v| v }.reverse
    @average = @good_catches.group(:user_id).average(:size).sort_by{ |k, v| v }.reverse
    @sum_size = @good_catches.group(:user_id).sum(:size).sort_by{ |k, v| v }.reverse
    @sum_weight = @good_catches.group(:user_id).sum(:weight).sort_by{ |k, v| v }.reverse

  end

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = current_user.challenges.new
    @challenges = current_user.challenges

    @challenge = current_user.challenges.new(challenge_params)
    if @challenge.save
      @challenge.challenge_users.create(user: current_user)
      redirect_to new_challenge_challenge_user_path(@challenge)
    else
      render "challenges/index"
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @challenge.destroy
    redirect_to root_path
  end

  private

  def set_challenge
    @challenge = Challenge.find(params[:id])
  end

  def challenge_params
    params.require(:challenge).permit(:name, :start_at, :end_at, :challenge_user_id, :created_at)
  end

end
