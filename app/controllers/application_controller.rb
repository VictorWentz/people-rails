class ApplicationController < ActionController::Base


  private
  def set_manager_list
    @managers = User.where('job_grade <= ?', 5)
  end
end
