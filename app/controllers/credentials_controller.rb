class CredentialsController < ApplicationController
  def index
    @credentials = Credential.all
  end

  def show
    @credential = Credential.find(params[:id])
  end

  def new
    @credential = Credential.new
  end

  def create
    @credential = Credential.new
    @credential.name = params[:name]

    if @credential.save
      redirect_to "/credentials", :notice => "Credential created successfully."
    else
      render 'new'
    end
  end

  def edit
    @credential = Credential.find(params[:id])
  end

  def update
    @credential = Credential.find(params[:id])

    @credential.name = params[:name]

    if @credential.save
      redirect_to "/credentials", :notice => "Credential updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @credential = Credential.find(params[:id])

    @credential.destroy

    redirect_to "/credentials", :notice => "Credential deleted."
  end
end
