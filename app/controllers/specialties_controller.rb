class SpecialtiesController < ApplicationController
  def index
    @specialties = Specialty.all
  end

  def show
    @specialty = Specialty.find(params[:id])
  end

  def new
    @specialty = Specialty.new
  end

  def create
    @specialty = Specialty.new
    @specialty.specialty_area = params[:specialty_area]

    if @specialty.save
      redirect_to "/specialties", :notice => "Specialty created successfully."
    else
      render 'new'
    end
  end

  def edit
    @specialty = Specialty.find(params[:id])
  end

  def update
    @specialty = Specialty.find(params[:id])

    @specialty.specialty_area = params[:specialty_area]

    if @specialty.save
      redirect_to "/specialties", :notice => "Specialty updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @specialty = Specialty.find(params[:id])

    @specialty.destroy

    redirect_to "/specialties", :notice => "Specialty deleted."
  end
end
