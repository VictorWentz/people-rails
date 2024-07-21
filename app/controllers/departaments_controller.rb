class DepartamentsController < ApplicationController

  before_action :require_signin
  before_action :set_manager_list
  before_action :set_departament , only: [:show, :edit, :update, :destroy]

  def index
    @departament = Departament.all
  end

  def new
    @departament = Departament.new
  end

  def create
    @departament = Departament.new(set_departament_params)

    if @departament.save
      redirect_to "/"
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def show

  end

  def edit

  end

  def update
    if @departament.update(set_departament_params)
      redirect_to "/"
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    fail
  end

  private
  def set_departament_params
    params.require(:departament).permit(:name, :user_id)
  end

  def set_departament
    @departament = Departament.find(params[:id])
  end

end
