class EntriesController < ApplicationController
	before_action :set_params,only: [:create,:destroy]
 #def index
   #@favorite_videos = current_end_user.favorites_videos
 #end
 def index
    @end_user = current_end_user
    @entries = Entry.where(end_user_id: @end_user.id).all
  end

 def create
   if Entry.create(end_user_id: @end_user.id,event_id: params[:format])
     redirect_to event_path(params[:format])
   else
     redirect_to event_path(params[:format])
   end
 end
 def destroy
   if entry = Entry.find_by(end_user_id: @end_user.id,event_id: params[:id] )
     entry.destroy
     redirect_to event_path(params[:id])
   else
     redirect_to event_path(params[:id])
   end
 end
 private
 def set_params
   @end_user = current_end_user
 end
end