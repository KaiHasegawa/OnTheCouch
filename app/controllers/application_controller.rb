class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  def set_search
    if params[:q].present?
      if params[:q][:name].present?
      @items = Item.where("name LIKE ?", "%#{params[:q][:name_or_actors_name_or_tags_name_or_genres_name_cont]}%").page(params[:page]).per(9)
      else
      @q = Item.page(params[:page]).per(9).ransack(params[:q])
      @items = @q.result(distinct: true)
      end
    end
      @q = Item.page(params[:page]).per(9).ransack(params[:q])
      @q_items = @q.result.page(params[:page]).per(9)
  end

  def has_key?
    keys = [:name]
    params[:q].has_key?(:name)
  end

  #def has_key
    #keys = [:name, :actors_name]
    #keys.each do |key|
      #if params[:q].has_key?(key)
        #return key
      #end
    #end
  #end

  

end
