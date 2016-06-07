class TherapistSpecialtiesController < ApplicationController
  def index
    @therapist_specialties = TherapistSpecialty.all
  end

  def show
    @therapist_specialty = TherapistSpecialty.find(params[:id])
  end

  def new
    @therapist_specialty = TherapistSpecialty.new
  end

  def create
    @therapist_specialty = TherapistSpecialty.new
    @therapist_specialty.specialty_id = params[:specialty_id]
    @therapist_specialty.therapist_id = params[:therapist_id]

    if @therapist_specialty.save
      redirect_to "/therapist_specialties", :notice => "Therapist specialty created successfully."
    else
      render 'new'
    end
  end

  def edit
    @therapist_specialty = TherapistSpecialty.find(params[:id])
  end

  def update
    @therapist_specialty = TherapistSpecialty.find(params[:id])

    @therapist_specialty.specialty_id = params[:specialty_id]
    @therapist_specialty.therapist_id = params[:therapist_id]

    if @therapist_specialty.save
      redirect_to "/therapist_specialties", :notice => "Therapist specialty updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @therapist_specialty = TherapistSpecialty.find(params[:id])

    @therapist_specialty.destroy

    redirect_to "/therapist_specialties", :notice => "Therapist specialty deleted."
  end
end
