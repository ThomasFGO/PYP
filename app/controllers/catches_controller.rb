class CatchesController < ApplicationController

  def index
    @review = Review.new
    @catches = current_user.catches.includes(:specie, :technic)
    @catches_markers = @catches.where.not(latitude: nil, longitude: nil)

    @markers = @catches_markers.map do |catch|
      {
        lat: catch.latitude,
        lng: catch.longitude,
        icon: ActionController::Base.helpers.asset_path("fish_marker_11.png"),
        infoWindow: { content: render_to_string(partial: "/catches/marker_content", locals: { catch: catch }) }
      }
    end

    @maximum = current_user.catches.maximum(:size)
    @count_total = current_user.catches.count
    @average = current_user.catches.average(:size)
    @sum_size = current_user.catches.sum(:size)
    @sum_weight = current_user.catches.sum(:weight)

  end

  def show
    @review = Review.new
    @catch = Catch.find(params[:id])
    @markers = [{
      lat: @catch.latitude,
      lng: @catch.longitude,
      icon: ActionController::Base.helpers.asset_path("fish_marker_11.png")
    }]
  end

  def new
    @catch = Catch.new
  end

  def create
    @catch = current_user.catches.new(catch_params)
    if @catch.save
      redirect_to catch_path(@catch)
    else
      render "catches/new"
    end
  end


  def edit
    @catch = Catch.find(params[:id])
  end

  def update
    @catch = Catch.find(params[:id])
    @catch.update(catch_params)
    redirect_to catch_path(@catch)
  end

  def destroy
    @catch = Catch.find(params[:id])
    @catch.destroy
    redirect_to root_path
  end

  private

  def catch_params
    params.require(:catch).permit(:specie_id, :photo, :description, :size, :weight, :date, :technic_id, :latitude, :longitude, :user_id, :created_at)
  end
end
