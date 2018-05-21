class CatchesController < ApplicationController

  def index
    @catches = Catch.all
  end

  def new
    @catch = Catch.new
  end

  def create
    @catch = Catch.new(catch_params)
    if @catch.save
      redirect_to root_path
    else
      render "catches/new"
    end
  end

  private

  def catch_params
    params.require(:catch).permit(:specie_id,:photo, :description, :size, :weight, :date, :technic_id, :user_id, )
  end
end
