class AcceptedInsurancesController < ApplicationController
  def index
    @accepted_insurances = AcceptedInsurance.all
  end

  def show
    @accepted_insurance = AcceptedInsurance.find(params[:id])
  end

  def new
    @accepted_insurance = AcceptedInsurance.new
  end

  def create
    @accepted_insurance = AcceptedInsurance.new
    @accepted_insurance.insurer_id = params[:insurer_id]
    @accepted_insurance.therapist_id = params[:therapist_id]

    if @accepted_insurance.save
      redirect_to "/accepted_insurances", :notice => "Accepted insurance created successfully."
    else
      render 'new'
    end
  end

  def edit
    @accepted_insurance = AcceptedInsurance.find(params[:id])
  end

  def update
    @accepted_insurance = AcceptedInsurance.find(params[:id])

    @accepted_insurance.insurer_id = params[:insurer_id]
    @accepted_insurance.therapist_id = params[:therapist_id]

    if @accepted_insurance.save
      redirect_to "/accepted_insurances", :notice => "Accepted insurance updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @accepted_insurance = AcceptedInsurance.find(params[:id])

    @accepted_insurance.destroy

    redirect_to "/accepted_insurances", :notice => "Accepted insurance deleted."
  end
end
