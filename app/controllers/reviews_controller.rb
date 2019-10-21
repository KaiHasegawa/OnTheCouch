class ReviewsController < ApplicationController
before_action :authenticate_end_user!, only: [:show, :create]

  def show
    @review = Review.find(params[:id])
    @comment = Comment.new
    @comments = @review.comments
  end

  def create
    @review = Review.new(review_params)
    @review.end_user = current_end_user
    @review.item_id = params[:item_id]
    @review.save!
  end

  private
    def review_params
      params.require(:review).permit(:body, :rate, :comment, :end_user_id, :item_id)
    end
    def comment_params
      params.require(:comment).permit(:review_id, :end_user_id, :content)
    end
end