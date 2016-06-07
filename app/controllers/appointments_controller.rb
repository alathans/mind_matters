class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new
    @appointment.appointment_status = params[:appointment_status]
    @appointment.duration_minutes = params[:duration_minutes]
    @appointment.datetime = params[:datetime]
    @appointment.user_id = params[:user_id]
    @appointment.therapist_id = params[:therapist_id]

    if @appointment.save
      redirect_to "/appointments", :notice => "Appointment created successfully."
    else
      render 'new'
    end
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])

    @appointment.appointment_status = params[:appointment_status]
    @appointment.duration_minutes = params[:duration_minutes]
    @appointment.datetime = params[:datetime]
    @appointment.user_id = params[:user_id]
    @appointment.therapist_id = params[:therapist_id]

    if @appointment.save
      redirect_to "/appointments", :notice => "Appointment updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])

    @appointment.destroy

    redirect_to "/appointments", :notice => "Appointment deleted."
  end
end
