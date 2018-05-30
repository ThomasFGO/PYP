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
    #@challenge_catches = Catch.where(user_id: @participants).where('created_at > ?', @challenge.start_at).where('created_at < ?', @challenge.end_at)
    #@good_catches = Catch.where(user: Challenge.last.users).where("created_at > ?", Challenge.last.start_at).where("created_at < ?", Challenge.last.end_at)

    #@max_size = @good_catches.order(size: :desc)
    #@count_total = @good_catches.group(:user).count
    #@average = @good_catches.group(:user).order(:user).average(:size).to_f.round(2)
    #@sum_size = @good_catches.group(:user).order(:user).sum(size)
    # @sum_weight = @good_catches.group(:user).order(:user).sum(weight)

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
