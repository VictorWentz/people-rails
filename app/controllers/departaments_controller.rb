class DepartamentsController < ApplicationController

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
    params.require(:departament).permit(:name)
  end

end
