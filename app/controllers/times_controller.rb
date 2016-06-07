class TimesController < ApplicationController
  def index
    @times = Time.all
  end

  def show
    @time = Time.find(params[:id])
  end

  def new
    @time = Time.new
  end

  def create
    @time = Time.new
    @time.time_slot = params[:time_slot]

    if @time.save
      redirect_to "/times", :notice => "Time created successfully."
    else
      render 'new'
    end
  end

  def edit
    @time = Time.find(params[:id])
  end

  def update
    @time = Time.find(params[:id])

    @time.time_slot = params[:time_slot]

    if @time.save
      redirect_to "/times", :notice => "Time updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @time = Time.find(params[:id])

    @time.destroy

    redirect_to "/times", :notice => "Time deleted."
  end
end
