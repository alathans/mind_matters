class ConversationsController < ApplicationController
  def index
    @conversations = Conversation.all
    @convos = current_user.conversations
  end

  def show
    @conversation = Conversation.find(params[:id])
  end

  def new
    @conversation = Conversation.new
    @therapist = Therapist.find(params[:id])
  end

  def create
    @conversation = Conversation.new
    @conversation.follow_up_items = params[:follow_up_items]
    @conversation.body = params[:body]
    @conversation.therapist_id = params[:therapist_id]
    @conversation.user_id = params[:user_id]
    @conversation.save
      redirect_to "/therapists", :notice => "Your message has been sent."
  end

  def edit
    @conversation = Conversation.find(params[:id])
  end

  def update
    @conversation = Conversation.find(params[:id])

    @conversation.follow_up_items = params[:follow_up_items]
    @conversation.body = params[:body]
    @conversation.therapist_id = params[:therapist_id]
    @conversation.user_id = params[:user_id]

    if @conversation.save
      redirect_to "/conversations", :notice => "Conversation updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @conversation = Conversation.find(params[:id])
    @conversation.destroy

    redirect_to "/conversations/index", :notice => "Conversation deleted."
  end
end
