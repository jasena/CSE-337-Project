class MotivationOptionsController < ApplicationController
  before_filter :authenticate_user!
  # GET /motivation
  # GET /motivation.json
  def index
    @quotecount = Quote.count('id')
	
	r = Random.new
	
	if @quotecount > 0
		@rid = r.rand(0...@quotecount) + 1
	else
		@rid = 0
	end
		
	@quote = Quote.find(@rid)
	
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end