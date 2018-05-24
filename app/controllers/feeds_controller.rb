class FeedsController < ApplicationController

  def index
    @catches = Catch.where(user_id: current_user.friends).or(current_user.catches).includes(:user, :specie)
  end

end
