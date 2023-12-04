class MessagesController < ApplicationController
  def create
    @library = Library.find(params[:library_id])
    @message = Message.new(message_params)
    @message.library = @library
    @message.user = current_user
    if @message.save
      LibraryChannel.broadcast_to(
        @library,
        render_to_string(partial: "messages/message", locals: {message: @message})
      )
      head :ok
    else
      render "libraries/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
