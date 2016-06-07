class InsurersController < ApplicationController
  def index
    @insurers = Insurer.all
  end

  def show
    @insurer = Insurer.find(params[:id])
  end

  def new
    @insurer = Insurer.new
  end

  def create
    @insurer = Insurer.new
    @insurer.insurer_name = params[:insurer_name]

    if @insurer.save
      redirect_to "/insurers", :notice => "Insurer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @insurer = Insurer.find(params[:id])
  end

  def update
    @insurer = Insurer.find(params[:id])

    @insurer.insurer_name = params[:insurer_name]

    if @insurer.save
      redirect_to "/insurers", :notice => "Insurer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @insurer = Insurer.find(params[:id])

    @insurer.destroy

    redirect_to "/insurers", :notice => "Insurer deleted."
  end
end
