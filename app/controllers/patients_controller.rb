class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.find(params[:id])
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def create
    patient = Patient.create(params[patient_params])
    redirect_to patient_path(patient)
  end

  def edit
    patient = Patient.find(params[:id])

  end

  def update

  end

  def destroy

  end

  private

  def patient_params
    params.require(:patients).permit(:name, :age)
  end

end
