class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @conversations = Conversation.where("sender_id = ? OR recipient_id = ?", current_user.id, current_user.id)
    @users = User.where.not(id: current_user.id)
  end

  def create
    
      @conversation = Conversation.create!(conversation_params) 

      @classified = Classified.find(@conversation.classified_id)
 
    
    redirect_to conversation_messages_path(@conversation, @classified)
  end

  private
    def conversation_params
      params.permit(:sender_id, :recipient_id, :classified_id)
    end
end