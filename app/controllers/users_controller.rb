class UsersController < ApplicationController

  before_action :set_manager_list


  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(set_user_params)

    if @user.save
      redirect_to "/"
    else
      render 'new', status: :unprocessable_entity
    end

  end

  def edit
    fail
  end

  def destroy
    fail
  end

  private
  def set_user_params
    params.require(:user).permit(:first_name, :last_name, :manager_id, :job_grade)
  end

  def set_manager_list
    @managers = User.where('job_grade <= ?', 5)
  end


end
