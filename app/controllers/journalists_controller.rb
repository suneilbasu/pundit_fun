class JournalistsController < ApplicationController
  def index
    @reports = Report.all
    @newReport = Report.new
  end
  def create
    @newReport = current_user.reports.new(report_params)
    if @newReport.save
      redirect_to :action => 'index'
    else
      render(:action => 'index')
    end
  end
  def report_params
    params.require(:report).permit(:story, :user_id)
  end
end
