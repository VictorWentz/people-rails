class ApplicationController < ActionController::Base


  private
  def set_manager_list
    @managers = User.where('job_grade <= ?', 5)
  end

  def current_user
    @current_user ||= User.find(session[:manager_id]) if session[:manager_id]
  end
end
