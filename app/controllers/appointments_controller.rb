class AppointmentsController < ApplicationController
    
    def new
        @appointments = Appointments.new

    end

    def show
        @appointment = Appointment.find(params[:id])
    end

end