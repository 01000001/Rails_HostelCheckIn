class TimeController < ApplicationController
  before_filter :set
  
  def set
  		if session[:time_variable].present? 
  			@time_variable = session[:time_variable]
  		else
			@time_variable = Date.today
			session[:time_variable] = Date.today
  		end
  end
	
	def set_today
		session[:time_variable] = Date.today
		redirect_to :back
	end
	
  def increase
  		session[:time_variable] += 1
  		redirect_to :back
  		#perhaps try render here
  end

  def decrease
  		session[:time_variable] -= 1
  		redirect_to :back
  end
  
end
