class UserNotesController < ApplicationController
  def index
    @user_notes = UserNote.all
  end

  def show
    @user_note = UserNote.find(params[:id])
  end

  def new
    @user_note = UserNote.new
  end

  def create
    @user_note = UserNote.new
    @user_note.body = params[:body]
    @user_note.appointment_id = params[:appointment_id]

    if @user_note.save
      redirect_to "/user_notes", :notice => "User note created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user_note = UserNote.find(params[:id])
  end

  def update
    @user_note = UserNote.find(params[:id])

    @user_note.body = params[:body]
    @user_note.appointment_id = params[:appointment_id]

    if @user_note.save
      redirect_to "/user_notes", :notice => "User note updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user_note = UserNote.find(params[:id])

    @user_note.destroy

    redirect_to "/user_notes", :notice => "User note deleted."
  end
end
