class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end
  
  def edit
    @exercises = Exercise.find_by_id(params[:id])
  end
  
  def update
    @exercises = Exercise.find(params[:id])
    if @exercises.update_attributes(params[:exercises])
      flash[:notice] = "Successfully updated workout titled: #{@exercises}"
    end
    redirect_to root_url
  end
  
  def destroy
    @exercises = Exercise.find(params[:id])
    @exercises.destroy unless @exercises.nil?
    flash[:notice] = "Deleted the movie titled: #{@exercises.id}"
    redirect_to root_url
end
end
