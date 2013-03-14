class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end
  
  def edit
    @exercise = Exercise.find_by_id(params[:id])
  end
  
  def update
    @exercise = Exercise.find(params[:id])
    if @exercise.update_attributes(params[:exercise])
      flash[:notice] = "Successfully updated workout titled: #{@exercise.id}"
    end
    redirect_to root_url
  end
  
  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy unless @exercise.nil?
    flash[:notice] = "Deleted the movie titled: #{@exercise.id}"
    redirect_to root_url
  end
  
  def new
    @exercise = Exercise.new()
  end
  
  def create
    @exercise = Exercise.new(params[:exercise])
    @exercise.save
    redirect_to root_url
  end
  
  
end
