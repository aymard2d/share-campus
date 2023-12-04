class LibraryChannel < ApplicationCable::Channel
  def subscribed
    library = Library.find(params[:id])
    stream_for library
  end


  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
