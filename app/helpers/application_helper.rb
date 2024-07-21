module ApplicationHelper
  def current_user
    @current_user ||= User.find(session[:manager_id]) if session[:manager_id]
  end

  def route_page?
    request.path.eql?(root_path)
  end
end
