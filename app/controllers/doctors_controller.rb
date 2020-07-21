class DoctorsController < ApplicationController

    before_action :find_doctor, only: [:show, :edit, :update, :destroy]

    def show
        @appointments = @doctor.appointments
    end

    def index
        @doctors = Doctor.all
    end

    def new
        @doctor = Doctor.new
    end

    def create 
        @doctor = Doctor.create(doctor_params)

        redirect_to doctor_path(@doctor)
    end

    def edit 
    end

    def update
        @doctor = Doctor.update(doctor_params)

        redirect_to doctor_path(@doctor)
    end 

    def destroy
        @doctor = Doctor.destroy
        redirect_to doctor_paths
    end

    private 

    def doctor_params
        params.require(:doctor).permit(:name, :department)
    end

    def find_doctor
        @doctor = Doctor.find(params[:id])
    end

end
