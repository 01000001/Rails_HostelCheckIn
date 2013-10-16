class TimeController < ApplicationController
  before_filter :set
  
  def set
  		if alert.present?
  		@date_variable = alert
  		else
  		@time_variable = Date.today
  		end
  end

  def increase
  		@time_variable += 1
  		redirect_to :back, :alert => @time_variable
  		#perhaps try render here
  end

  def decrease
  		@time_variable -= 1
  		redirect_to :back, :alert => @time_variable
  end
  
end