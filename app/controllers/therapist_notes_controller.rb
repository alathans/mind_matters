class TherapistNotesController < ApplicationController
  def index
    @therapist_notes = TherapistNote.all
  end

  def show
    @therapist_note = TherapistNote.find(params[:id])
  end

  def new
    @therapist_note = TherapistNote.new
  end

  def create
    @therapist_note = TherapistNote.new
    @therapist_note.body = params[:body]
    @therapist_note.appointment_id = params[:appointment_id]

    if @therapist_note.save
      redirect_to "/therapist_notes", :notice => "Therapist note created successfully."
    else
      render 'new'
    end
  end

  def edit
    @therapist_note = TherapistNote.find(params[:id])
  end

  def update
    @therapist_note = TherapistNote.find(params[:id])

    @therapist_note.body = params[:body]
    @therapist_note.appointment_id = params[:appointment_id]

    if @therapist_note.save
      redirect_to "/therapist_notes", :notice => "Therapist note updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @therapist_note = TherapistNote.find(params[:id])

    @therapist_note.destroy

    redirect_to "/therapist_notes", :notice => "Therapist note deleted."
  end
end
