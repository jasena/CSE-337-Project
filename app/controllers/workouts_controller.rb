class WorkoutsController < ApplicationController
  before_filter :authenticate_user!
  # GET /workouts
  # GET /workouts.json
  def index
    @workouts = Workout.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @workouts }
    end
  end

  # GET /workouts/1
  # GET /workouts/1.json
  def show
    #@workout = Workout.find_by_user_id(current_user)
    @workout = Workout.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @workout }
    end
    rescue ActiveRecord::RecordNotFound
      flash[:notice] = "No workouts entered for this day"
      redirect_to :back
  end

  # GET /workouts/new
  # GET /workouts/new.json
  def new
    #@workout = Workout.new
    @workout = current_user.workouts.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @workout }
    end
  end

  # GET /workouts/1/edit
  def edit
    @workout = Workout.find(params[:id])
  end

  # POST /workouts
  # POST /workouts.json
  def create
    @workout = Workout.new(params[:workout])

    respond_to do |format|
      if @workout.save
        flash[:alert] =  'Workout was successfully created.'
        format.html { redirect_to @workout}
        format.json { render json: @workout, status: :created, location: @workout }
      else
        format.html { render action: "new" }
        format.json { render json: @workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /workouts/1
  # PUT /workouts/1.json
  def update
    @workout = Workout.find(params[:id])

    respond_to do |format|
      if @workout.update_attributes(params[:workout])
        flash[:alert] =  'Workout was successfully updated.'
        format.html { redirect_to @workout }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workouts/1
  # DELETE /workouts/1.json
  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy

    respond_to do |format|
      format.html { redirect_to days_url }
      format.json { head :no_content }
    end
    
  end
end
