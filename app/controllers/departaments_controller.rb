class DepartamentsController < ApplicationController

  before_action :set_manager_list

  def index
    fail
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

  private
  def set_departament_params
    params.require(:departament).permit(:name, :user_id)
  end

end
