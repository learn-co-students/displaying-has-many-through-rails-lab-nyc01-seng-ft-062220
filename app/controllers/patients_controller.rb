class PatientsController < ApplicationController
    def show
        @patient = Patient.find(params[:id])
        @patient_appts = @patient.appointments
    end

    def index
        @patients = Patient.all
    end


end