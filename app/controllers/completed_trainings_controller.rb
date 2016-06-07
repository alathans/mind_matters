class CompletedTrainingsController < ApplicationController
  def index
    @completed_trainings = CompletedTraining.all
  end

  def show
    @completed_training = CompletedTraining.find(params[:id])
  end

  def new
    @completed_training = CompletedTraining.new
  end

  def create
    @completed_training = CompletedTraining.new
    @completed_training.date_completed = params[:date_completed]
    @completed_training.training_id = params[:training_id]
    @completed_training.therapist_id = params[:therapist_id]

    if @completed_training.save
      redirect_to "/completed_trainings", :notice => "Completed training created successfully."
    else
      render 'new'
    end
  end

  def edit
    @completed_training = CompletedTraining.find(params[:id])
  end

  def update
    @completed_training = CompletedTraining.find(params[:id])

    @completed_training.date_completed = params[:date_completed]
    @completed_training.training_id = params[:training_id]
    @completed_training.therapist_id = params[:therapist_id]

    if @completed_training.save
      redirect_to "/completed_trainings", :notice => "Completed training updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @completed_training = CompletedTraining.find(params[:id])

    @completed_training.destroy

    redirect_to "/completed_trainings", :notice => "Completed training deleted."
  end
end
