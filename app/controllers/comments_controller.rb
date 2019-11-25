class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.end_user = current_end_user
    @comment.review_id = params[:review_id]
    @review = Review.find(params[:review_id])
    @review.item_id = params[:item_id]
    @item = Item.find(params[:item_id])

    if @comment.save
        redirect_to item_review_path(@review.item_id,params[:review_id])
    else
        render "reviews/show"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'コメントが削除されました。' }
      format.json { head :no_content }
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :review_id, :end_user_id)
  end
end
