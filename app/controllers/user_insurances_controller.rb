class UserInsurancesController < ApplicationController
  def index
    @user_insurances = UserInsurance.all
  end

  def show
    @user_insurance = UserInsurance.find(params[:id])
  end

  def new
    @user_insurance = UserInsurance.new
  end

  def create
    @user_insurance = UserInsurance.new
    @user_insurance.uninsured = params[:uninsured]
    @user_insurance.insurer_id = params[:insurer_id]
    @user_insurance.user_id = params[:user_id]

    if @user_insurance.save
      redirect_to "/user_insurances", :notice => "User insurance created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user_insurance = UserInsurance.find(params[:id])
  end

  def update
    @user_insurance = UserInsurance.find(params[:id])

    @user_insurance.uninsured = params[:uninsured]
    @user_insurance.insurer_id = params[:insurer_id]
    @user_insurance.user_id = params[:user_id]

    if @user_insurance.save
      redirect_to "/user_insurances", :notice => "User insurance updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user_insurance = UserInsurance.find(params[:id])

    @user_insurance.destroy

    redirect_to "/user_insurances", :notice => "User insurance deleted."
  end
end
