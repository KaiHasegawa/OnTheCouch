class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.end_user = current_end_user
    @comment.review_id = params[:review_id]
    @review = Review.find(params[:review_id])
    @comment.save!
    redirect_to  item_review_path(@review.item_id,params[:review_id])
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :review_id, :end_user_id)
  end
end
