class LicensesController < ApplicationController
  def index
    @licenses = License.all
  end

  def show
    @license = License.find(params[:id])
  end

  def new
    @license = License.new
  end

  def create
    @license = License.new
    @license.license_number = params[:license_number]
    @license.state_id = params[:state_id]
    @license.therapist_id = params[:therapist_id]

    if @license.save
      redirect_to "/licenses", :notice => "License created successfully."
    else
      render 'new'
    end
  end

  def edit
    @license = License.find(params[:id])
  end

  def update
    @license = License.find(params[:id])

    @license.license_number = params[:license_number]
    @license.state_id = params[:state_id]
    @license.therapist_id = params[:therapist_id]

    if @license.save
      redirect_to "/licenses", :notice => "License updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @license = License.find(params[:id])

    @license.destroy

    redirect_to "/licenses", :notice => "License deleted."
  end
end
