class OptionsController < ApplicationController
  before_filter :authenticate_user!
  # GET /options
  # GET /options.json
  def index
    
	
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end