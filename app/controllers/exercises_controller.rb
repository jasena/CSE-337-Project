class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end
  
  def edit
    @exercises = Exercise.find_by_id(1)
  end
end
