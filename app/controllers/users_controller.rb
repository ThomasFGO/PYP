class UsersController < ApplicationController
  def show
    @review = Review.new
    @user = User.find(params[:id])
    @catches = @user.catches.includes(:specie, :technic)
    @catches_markers = @catches.where.not(latitude: nil, longitude: nil)

    @markers = @catches_markers.map do |catch|
      {
        lat: catch.latitude,
        lng: catch.longitude,
        icon: ActionController::Base.helpers.asset_path("fish_marker_11.png"),
        infoWindow: { content: render_to_string(partial: "/catches/marker_content", locals: { catch: catch }) }
      }
    end

    @maximum = @user.catches.maximum(:size)
    @count_total = @user.catches.count
    @average = @user.catches.average(:size).round(2)
    @sum_size = @user.catches.sum(:size)
    @sum_weight = @user.catches.sum(:weight)
  end
end
