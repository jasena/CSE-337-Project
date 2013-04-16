class FoodsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @foods = Food.all
  end

  def edit
    @food = Food.find_by_id(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    if @food.update_attributes(params[:food])
      flash[:notice] = "Successfully updated product titled: #{@food.Name}"
    end
    redirect_to foods_url
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    if @food.destroyed?
      flash[:notice] = "Successfully destroyed #{@food.Name}!!!!"
    else
      flash[:error] = "Could not delete the object"
    end
    redirect_to foods_url
  end

  def new
    @food = Food.new()
  end

  def create
    @food = Food.new(params[:food])
    @food.save

    redirect_to foods_url
  end

end
