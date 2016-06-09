class UsersController < ApplicationController

  def welcome
  end

  def about
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
  end

  def update
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
    redirect_to "/users/#{current_user.id}", :notice => "Account updated successfully."
  end

  def show
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
  end

end
