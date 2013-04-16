class MotivationOptionsController < ApplicationController
  before_filter :authenticate_user!
  # GET /motivation
  # GET /motivation.json
  def index
    @quotecount = Quote.count('id')
	
	r = Random.new
	
	if @quotecount > 0
		@rid = r.rand(0...@quotecount) + 1
		@quote = Quote.find(@rid)
	else
		@rid = 0
	end
	
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end