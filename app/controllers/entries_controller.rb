class EntriesController < ApplicationController
  before_action :require_login

  def show
    @entry = Entry.find(params[:id])
    # Ensure user can only view their own entries
    redirect_to "/" unless @entry.user_id == @current_user.id
  end

  def new
    @entry = Entry.new
    @places = @current_user.places
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.user = @current_user
    
    if @entry.save
      redirect_to "/places/#{@entry.place_id}"
    else
      @places = Place.all
      render :new
    end
  end

  def edit
    @entry = Entry.find(params[:id])
    @places = @current_user.places
    # Ensure user can only edit their own entries
    redirect_to "/" unless @entry.user_id == @current_user.id
  end

  def update
    @entry = Entry.find(params[:id])
    # Ensure user can only update their own entries
    redirect_to "/" unless @entry.user_id == @current_user.id
    
    if @entry.update(entry_params)
      redirect_to "/places/#{@entry.place_id}"
    else
      @places = @current_user.places
      render :edit
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    # Ensure user can only delete their own entries
    redirect_to "/" unless @entry.user_id == @current_user.id
    
    place_id = @entry.place_id
    @entry.destroy
    redirect_to "/places/#{place_id}"
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :description, :occurred_on, :place_id, :image)
  end
end
