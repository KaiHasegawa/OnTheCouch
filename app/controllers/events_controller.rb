class EventsController < ApplicationController

  def new
    @event = Event.new
  end

	def create
    @event = Event.new(event_params)
    # @event.end_user_id = current_end_user.id
    @event.save
    redirect_to @event

  end

  def show
    @event = Event.find(params[:id])

    #current_end_user.like(@event)
    #flash[:success] = 'お気に入り登録をしました。'
    #redirect_back(fallback_location: events_path)

  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
  @event = Event.find(params[:id])
  @event.update(event_params)
  redirect_to @event
  end

  def index
      @events = Event.all
  end

  def destroy

    event = Event.find(params[:event_id])

    #current_end_user.unlike(event)
    #flash[:success] = 'お気に入り登録を解除しました。'
    #redirect_back(fallback_location: root_path)

  end


	private
    def event_params
      params.require(:event).permit(:event,:event_name,:entries,:favevents,:event_image,:event_description,:event_fee,:event_date,:event_time)
    end

end

