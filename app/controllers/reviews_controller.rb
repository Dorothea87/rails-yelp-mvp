class ReviewsController < ApplicationController
  def new
  @restaurant = Restaurant.find(params[restaurant :id])
  @review = Review.new
  end
end
