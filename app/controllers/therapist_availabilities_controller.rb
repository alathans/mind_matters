class TherapistAvailabilitiesController < ApplicationController
  def index
    @therapist_availabilities = TherapistAvailability.all
  end

  def show
    @therapist_availability = TherapistAvailability.find(params[:id])
  end

  def new
    @therapist_availability = TherapistAvailability.new
  end

  def create
    @therapist_availability = TherapistAvailability.new
    @therapist_availability.time_id = params[:time_id]
    @therapist_availability.therapist_id = params[:therapist_id]

    if @therapist_availability.save
      redirect_to "/therapist_availabilities", :notice => "Therapist availability created successfully."
    else
      render 'new'
    end
  end

  def edit
    @therapist_availability = TherapistAvailability.find(params[:id])
  end

  def update
    @therapist_availability = TherapistAvailability.find(params[:id])

    @therapist_availability.time_id = params[:time_id]
    @therapist_availability.therapist_id = params[:therapist_id]

    if @therapist_availability.save
      redirect_to "/therapist_availabilities", :notice => "Therapist availability updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @therapist_availability = TherapistAvailability.find(params[:id])

    @therapist_availability.destroy

    redirect_to "/therapist_availabilities", :notice => "Therapist availability deleted."
  end
end
