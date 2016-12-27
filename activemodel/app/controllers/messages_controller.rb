class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.valid?
      flash[:notice] = "Message sent! Thank you for contacting us."
      redirect_to root_url
    else
      render "new"
    end
  end
  private
  def message_params
    params.require(:message).permit(:name, :email, :content)
  end
end
