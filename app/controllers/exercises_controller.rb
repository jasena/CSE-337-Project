class ExercisesController < ApplicationController
  before_filter :authenticate_user!
  def index
    @exercises = Exercise.all
  end
  
  def edit
    @exercise = Exercise.find_by_id(params[:id])
  end
  
  def update
    @exercise = Exercise.find(params[:id])
    if @exercise.update_attributes(params[:exercise])
      flash[:notice] = "Successfully updated the exercise titled: #{@exercise.id}"
    end
    redirect_to root_url
  end
  
  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy unless @exercise.nil?
    flash[:notice] = "Deleted the exercise titled: #{@exercise.id}"
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
