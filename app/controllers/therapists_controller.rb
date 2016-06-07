class TherapistsController < ApplicationController
  def index
    @therapists = Therapist.all
  end

  def show
    @therapist = Therapist.find(params[:id])
  end

  def new
    @therapist = Therapist.new
  end

  def create
    @therapist = Therapist.new
    @therapist.bio = params[:bio]
    @therapist.education = params[:education]
    @therapist.national_provider_identifier = params[:national_provider_identifier]
    @therapist.photo = params[:photo]
    @therapist.address = params[:address]
    @therapist.email = params[:email]
    @therapist.password = params[:password]
    @therapist.username = params[:username]
    @therapist.last_name = params[:last_name]
    @therapist.first_name = params[:first_name]

    if @therapist.save
      redirect_to "/therapists", :notice => "Therapist created successfully."
    else
      render 'new'
    end
  end

  def edit
    @therapist = Therapist.find(params[:id])
  end

  def update
    @therapist = Therapist.find(params[:id])

    @therapist.bio = params[:bio]
    @therapist.education = params[:education]
    @therapist.national_provider_identifier = params[:national_provider_identifier]
    @therapist.photo = params[:photo]
    @therapist.address = params[:address]
    @therapist.email = params[:email]
    @therapist.password = params[:password]
    @therapist.username = params[:username]
    @therapist.last_name = params[:last_name]
    @therapist.first_name = params[:first_name]

    if @therapist.save
      redirect_to "/therapists", :notice => "Therapist updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @therapist = Therapist.find(params[:id])

    @therapist.destroy

    redirect_to "/therapists", :notice => "Therapist deleted."
  end
end
