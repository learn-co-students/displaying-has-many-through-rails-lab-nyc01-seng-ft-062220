class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def new

  end

  def show

    @doctor = Doctor.find(params[:id])

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def doctor_params
    params.require(:doctors).permit(:name, :department)
  end




end
