class WelcomeController < ApplicationController
  def index
    @reports = Report.all

  if user_signed_in? 
      @myreports = Report.all.where(user_id: current_user.id)
  end
    @newReport = Report.new
  end
  def create
    @newReport = Report.new(report_params)
    if @newReport.save
      redirect_to :action => 'index'
    else
      render(:action => 'index')
    end
  end
  def report_params
    params.require(:report).permit(:story)
  end
end
