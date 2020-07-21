class PatientsController < ApplicationController

    before_action :find_patient, only: [:show, :edit, :update, :destroy]

    def show
        @appointments = @patient.appointments
    end

    def index
        @patients = Patient.all
    end

    def new
        @patient = patient.new
    end

    def create 
        @patient = patient.create(patient_params)

        redirect_to patient_path(@patient)
    end

    def edit 
    end

    def update
        @patient = patient.update(patient_params)

        redirect_to patient_path(@patient)
    end 

    def destroy
        @patient = patient.destroy
        redirect_to patient_paths
    end

    private 

    def patient_params
        params.require(:patient).permit(:name, :age)
    end

    def find_patient
        @patient = Patient.find(params[:id])
    end
end
