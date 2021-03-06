class ReviewsController < ApplicationController
before_action :authenticate_end_user!, only: [:show, :create]

  def show
    @review = Review.find(params[:id])
    @item = Item.find(params[:item_id])
    @comment = Comment.new
    @comments = @review.comments
  end

  def create
    @review = Review.new(review_params)
    @review.end_user = current_end_user
    @item = Item.find(params[:item_id])
    @reviews = @item.reviews
    @review.item_id = params[:item_id]
    if @review.save
        redirect_to item_path(@review.item_id,params[:item_id])
    else
        render "items/show"
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'レビューが削除されました。' }
      format.json { head :no_content }
    end
  end


  private
    def review_params
      params.require(:review).permit(:body, :rate, :comment, :end_user_id, :item_id)
    end
    def comment_params
      params.require(:comment).permit(:review_id, :end_user_id, :content)
    end
end