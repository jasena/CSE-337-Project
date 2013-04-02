class DaysController < ApplicationController
  # GET /days
  # GET /days.json
  @@dayspermonth = [0,31,28,31,30,31,30,31,31,30,31,30,31]
  @@month_choices = ["January","February", "March", "April", "May", "June","July", "August", "September", "October", "November", "December"]
  @days = Day.search("January")


  def index
    check
    time = Time.new

    #if params[:search]
    #  empty_search = params[:search].keep_if {|k, val| !val.blank?}.empty?
   # else
    #  empty_search = true
    #end

    if params[:search].nil?
      # no search was submitted, or search params are all blank
      @days = Day.search(time.strftime "%B")

    else
      # a search was submitted
      @days = Day.search(params[:search])
    end
    @month =   params[:search]

    #@days = Day.search("April")
    #@days = Day.search(params[:search])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @days }
    end
  end

  # GET /days/1
  # GET /days/1.json
  def show
    @day = Day.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @day }
    end
  end

  # GET /days/new
  # GET /days/new.json
  def new
    @day = Day.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @day }
    end
  end

  # GET /days/1/edit
  def edit
    @day = Day.find(params[:id])
  end

  # POST /days
  # POST /days.json
  def create
    @day = Day.new(params[:day])

    respond_to do |format|
      if @day.save
        format.html { redirect_to @day, notice: 'Day was successfully created.' }
        format.json { render json: @day, status: :created, location: @day }
      else
        format.html { render action: "new" }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /days/1
  # PUT /days/1.json
  def update
    @day = Day.find(params[:id])

    respond_to do |format|
      if @day.update_attributes(params[:day])
        format.html { redirect_to @day, notice: 'Day was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /days/1
  # DELETE /days/1.json
  def destroy
    @day = Day.find(params[:id])
    @day.destroy

    respond_to do |format|
      format.html { redirect_to days_url }
      format.json { head :no_content }
    end
  end

  def check
    d = Time.new(2013)

    #m = '%02i' % @@mon
    @days = Day.all#(:conditions => { :month=> @@month_choices[m.to_i] })
    if @days.blank?
      for i in (0..364)#@@dayspermonth[@month]
        #d = '%02i' % i
        #m = '%02i' % @month
        #Day.create(:exercises  => '', :date =>"2013-#{m}-#{d}", :month => @@month_choices[@@mon])
        t = d+i*(60*60*24)
        Day.create(:exercises  => "#{i}", :date => ((t).strftime "%Y-%m-%d").to_s, :month => (t.strftime "%B"))
      end
      #@days = Day.all#(:conditions => { :date=> m })
    end
  end
end
