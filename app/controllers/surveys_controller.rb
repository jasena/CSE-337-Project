class SurveysController < ApplicationController
  def new
      @survey = Survey.new
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
    @survey = Survey.find(params[:id])
  end
end
