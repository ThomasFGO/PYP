class CatchesController < ApplicationController

  def index
    @catches = current_user.catches.all
    @catches_markers = @catches.where.not(latitude: nil, longitude: nil)

    @markers = @catches_markers.map do |catch|
      {
        lat: catch.latitude,
        lng: catch.longitude
      #,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def new
    @catch = Catch.new
  end

  def create
    byebug
    @catch = Catch.new(catch_params)
    @catch.user = current_user

    @catch = current_user.catches.new(catch_params)
    #get user location (lat, lng)
    #create the marker
    if @catch.save
      redirect_to root_path
    else
      render "catches/new"
    end
  end

  private

  def catch_params
    params.require(:catch).permit(:specie_id,:photo, :description, :size, :weight, :date, :technic_id, :latitude, :longitude )
  end
end
