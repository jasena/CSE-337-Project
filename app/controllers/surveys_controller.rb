class SurveysController < ApplicationController
  before_filter :authenticate_user!
  def new
      @survey = current_user.surveys.build
      @defs = Def.new
  end

  def create
      @survey = Survey.new(params[:survey])
      if @survey.save
        redirect_to @survey
      else
        # This line overrides the default rendering behavior, which
        # would have been to render the "create" view.
        render :action => "new"
      end
  end

  def show
    @survey = Survey.find_by_user_id(current_user)
    @defs = Def.first
  end
end
