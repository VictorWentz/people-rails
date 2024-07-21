class ApplicationController < ActionController::Base





  private
  def set_manager_list
    @managers = User.where('job_grade <= ?', 5)
  end

  def current_user
    @current_user ||= User.find(session[:manager_id]) if session[:manager_id]
  end

  def require_signin
    unless current_user
      session[:intended_url] = request.url
      redirect_to new_session_url, alert: "Please sign in."
    end
  end





  helper_method :current_user
  helper_method :is_your_user

end
