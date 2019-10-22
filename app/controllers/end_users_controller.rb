class EndUsersController < ApplicationController

  def like(event)
    entries.find_or_create_by(event_id: event.id)
  end

 def likes

    @end_user = EndUser.find(params[:id])

    @favevents = @end_user.favevents.page(params[:page])

    counts(@end_user)
  end
  def index
    @end_user = EndUser.all
  end
  def edit
    @end_user = EndUser.find(params[:id])
    @reviews = @end_user.reviews
    @entries = @end_user.entries
  end

	def show
		@end_user = EndUser.find(params[:id])
		@favevents = @end_user.favevents.page(params[:page])
	end

  def mypage
     @end_user = EndUser.find(params[:id])
  end

  def update
     end_user = EndUser.find(params[:id])
     end_user.update(end_user_params)
     redirect_to edit_end_user_path(end_user.id)
  end

  #お気に入り削除

  def unlike(event)
    entry = entries.find_by(event_id: event.id)

    entry.destroy if entry
  end


  def  favevent?(event)
    self.favevents.include?(event)
  end
private
    def end_user_params
      params.require(:end_user).permit(:name,:image,:events,:entries,:favevents,:end_user_image,:review)
    end

end
