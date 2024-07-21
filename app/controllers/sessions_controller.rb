class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.email.eql?("victor_wentz@vitu.com")
      session[:manager_id] = user.id
      redirect_to users_url, notice: "welcome back"
    elsif user && user.job_grade <= 6
      session[:manager_id] = user.id
      redirect_to feedbacks_url, notice: "welcome back"
    else
      render :new, status: :unprocessable_entity

    end
  end

  def destroy
    session[:manager_id] = nil
    redirect_to root_url, status: :see_other
  end
end
