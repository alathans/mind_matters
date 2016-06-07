class TrainingsController < ApplicationController
  def index
    @trainings = Training.all
  end

  def show
    @training = Training.find(params[:id])
  end

  def new
    @training = Training.new
  end

  def create
    @training = Training.new
    @training.description = params[:description]
    @training.name = params[:name]

    if @training.save
      redirect_to "/trainings", :notice => "Training created successfully."
    else
      render 'new'
    end
  end

  def edit
    @training = Training.find(params[:id])
  end

  def update
    @training = Training.find(params[:id])

    @training.description = params[:description]
    @training.name = params[:name]

    if @training.save
      redirect_to "/trainings", :notice => "Training updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @training = Training.find(params[:id])

    @training.destroy

    redirect_to "/trainings", :notice => "Training deleted."
  end
end
