class TherapistCredentialsController < ApplicationController
  def index
    @therapist_credentials = TherapistCredential.all
  end

  def show
    @therapist_credential = TherapistCredential.find(params[:id])
  end

  def new
    @therapist_credential = TherapistCredential.new
  end

  def create
    @therapist_credential = TherapistCredential.new
    @therapist_credential.credential_id = params[:credential_id]
    @therapist_credential.therapist_id = params[:therapist_id]

    if @therapist_credential.save
      redirect_to "/therapist_credentials", :notice => "Therapist credential created successfully."
    else
      render 'new'
    end
  end

  def edit
    @therapist_credential = TherapistCredential.find(params[:id])
  end

  def update
    @therapist_credential = TherapistCredential.find(params[:id])

    @therapist_credential.credential_id = params[:credential_id]
    @therapist_credential.therapist_id = params[:therapist_id]

    if @therapist_credential.save
      redirect_to "/therapist_credentials", :notice => "Therapist credential updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @therapist_credential = TherapistCredential.find(params[:id])

    @therapist_credential.destroy

    redirect_to "/therapist_credentials", :notice => "Therapist credential deleted."
  end
end
