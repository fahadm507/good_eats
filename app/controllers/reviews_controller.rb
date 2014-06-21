 class ReviewsController < ApplicationController

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build(review_params)
    if @review.save
      redirect_to "/restaurants/#{@restaurant.id}"
    else
      flash[:notice]= "Please provide the required input "
      render :new
    end
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  private

  def review_params
    params.require(:review).permit(:rating, :body)
  end
end
