class PlacesController < ApplicationController
  before_action :require_login

  def index
    @places = @current_user.places.includes(:entries)
  end

  def show
    @place = @current_user.places.find(params[:id])
    # Only show entries created by the current user
    @entries = @place.entries.where(user_id: @current_user.id)
  end

  def new
    @place = @current_user.places.new
  end

  def create
    @place = @current_user.places.new(place_params)
    if @place.save
      redirect_to "/places"
    else
      render :new
    end
  end

  def destroy
    @place = @current_user.places.find(params[:id])
    @place.destroy
    redirect_to "/places"
  end

  private

  def place_params
    params.require(:place).permit(:name)
  end
end
