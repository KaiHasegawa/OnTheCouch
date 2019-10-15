class EndUsersController < ApplicationController

  def like(event)
    entries.find_or_create_by(event_id: event.id)
  end

 def likes

    @end_user = EndUser.find(params[:id])

    @favevents = @end_user.favevents.page(params[:page])

    counts(@end_user)

  end

	def show
		@end_user = EndUser.find(params[:id])
		@favevents = @end_user.favevents.page(params[:page])
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
    def enduser_params
      params.require(:end_user).permit(:name,:image,:events,:entries,:favevents)
    end

end
