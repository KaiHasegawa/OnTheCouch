class ReviewsController < ApplicationController
before_action :authenticate_end_user!, only: [:show, :create]

  def show
    @review = Review.find(params[:id])
    @comments = @review.comments
    @comment = Comment.new
  end

  def create
    @review = Item.find(params[:item_id]).reviews.new(review_params)
    @review.end_user_id = current_end_user.id
    if @review.save!
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end


  private
    def review_params
      params.require(:review).permit(:body, :rate)
    end

end
