class UsersController < ApplicationController

  def dashboard
    @user = User.find(params[:id])
  end

  def create
    @user = User.new
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.username = params[:username]
    @user.password = params[:password]
    @user.email = params[:email]
    @user.address = params[:address]
    @user.photo = params[:photo]
    @user.branch = params[:branch]
    @user.occupational_specialty = params[:occupational_specialty]
    @user.last_rank = params[:last_rank]
    @user.years_of_service = params[:years_of_service]
    @user.months_deployed = params[:months_deployed]
    @user.location_deployed = params[:location_deployed]
    if @user.save
      redirect_to "/dashboard/#{current_user}", :notice => "Account created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.username = params[:username]
    @user.password = params[:password]
    @user.email = params[:email]
    @user.address = params[:address]
    @user.photo = params[:photo]
    @user.branch = params[:branch]
    @user.occupational_specialty = params[:occupational_specialty]
    @user.last_rank = params[:last_rank]
    @user.years_of_service = params[:years_of_service]
    @user.months_deployed = params[:months_deployed]
    @user.location_deployed = params[:location_deployed]
    @user.save
    redirect_to "/dashboard/#{current_user}", :notice => "Account updated successfully."
  end

end
