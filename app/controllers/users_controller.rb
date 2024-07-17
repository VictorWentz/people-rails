class UsersController < ApplicationController

  before_action :set_manager_list
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    # set_user
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
    # set_user

  end

  def update
    # set_user
    if @user.update(set_user_params)
      redirect_to "/"
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    fail
  end

  private
  def set_user_params
    params.require(:user).permit(:first_name, :last_name, :manager_id, :job_grade, departament_ids: [])
  end

  def set_user
    @user = User.find(params[:id])
  end


end
