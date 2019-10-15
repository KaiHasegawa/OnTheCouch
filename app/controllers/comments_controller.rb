class CommentsController < ApplicationController
def create
    @comment = Review.find(params[:review_id]).comments.new(comment_params)
    @comment.end_user_id = current_end_user.id
    if @comment.save!
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end

  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
