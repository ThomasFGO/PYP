class ReviewsController < ApplicationController
  before_action :find_catch, only: [:new, :create]
  def new
    @review = Review.new
  end

  def create
    @review = @catch.reviews.new(review_params)
    @review.user = current_user

    if @review.save
      respond_to do |format|
        format.html { redirect_to catch_path(@catch) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'catches/show' }
        format.js
      end
    end

  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

  def find_catch
    @catch = Catch.find(params[:catch_id])
  end
end
