class CatchesController < ApplicationController

  def index
    @catches = current_user.catches.includes(:specie, :technic)
    @catches_markers = @catches.where.not(latitude: nil, longitude: nil)

    @markers = @catches_markers.map do |catch|
      {
        lat: catch.latitude,
        lng: catch.longitude,
        icon: ActionController::Base.helpers.asset_path("fish_marker_3.svg"),
        infoWindow: { content: render_to_string(partial: "/catches/marker_content", locals: { catch: catch }) }
      }
    end
  end

  def new
    @catch = Catch.new
  end

  def create
    @catch = current_user.catches.new(catch_params)
    #create the marker
    if @catch.save
      redirect_to catch_path(@catch)
    else
      render "catches/new"
    end
  end

  def show
    @catch = Catch.find(params[:id])
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
