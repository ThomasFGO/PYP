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
  end
end
