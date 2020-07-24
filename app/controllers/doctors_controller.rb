class DoctorsController < ApplicationController

    def show
        @doctor = Doctor.find(params[:id])
        @appointments = @doctor.appointments
        @appointment = @appointments.each do |appt|
            appt.appointment_datetime 
        end
    end

end
