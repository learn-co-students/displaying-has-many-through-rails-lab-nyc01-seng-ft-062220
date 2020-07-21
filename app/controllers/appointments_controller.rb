class AppointmentsController < ApplicationController


  def new
    @appointment = Appointment.find(params[:id])
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def create
    appointment = Appointment.create(appointment_params)
    redirect_to appointment_path(appointment)
  end

  def edit
    @appointment = Appointment.find(params:id)

  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(appointment_params)
    redirect_to appointment_path(@appointment)
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to appointments_path
  end

  private

  def appointment_params
    params.require(:doctors).permit(:patient_id, :doctor_id)
  end




end
