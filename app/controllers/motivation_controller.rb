class MotivationController < ApplicationController
  # GET /motivation
  # GET /motivation.json
  def index
    @quote = Quote.all
	
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @quote }
    end
  end
  
  # GET /motivation/1
  # GET /motivation/1.json
  def show
    @quote = Quote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @quote }
    end
    rescue ActiveRecord::RecordNotFound
      flash[:notice] = "Motivational quote entry not found. It might have been deleted."
      redirect_to :back
  end
  
  # GET /motivation/new
  # GET /motivation/new.json
  def new
    @quote = Quote.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @quote }
    end
  end

  # GET /motivation/1/edit
  def edit
    @quote = Quote.find(params[:id])
  end
  
  # POST /motivation
  # POST /motivation.json
  def create
    @quote = Quote.new(params[:quote])

    respond_to do |format|
      if @quote.save
        flash[:alert] =  'The motivational quote was successfully created.'
        format.html { redirect_to @quote}
        format.json { render json: @quote, status: :created, location: @quote }
      else
        format.html { render action: "new" }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # PUT /motivation/1
  # PUT /motivation/1.json
  def update
    @quote = Quote.find(params[:id])

    respond_to do |format|
      if @quote.update_attributes(params[:quote])
        flash[:alert] =  'The motivational quote was successfully updated.'
        format.html { redirect_to @quote }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # DELETE /motivation/1
  # DELETE /motivation/1.json
  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy

    respond_to do |format|
      format.html { redirect_to motivation_url }
      format.json { head :no_content }
    end
    
  end
 end