class LibrariesController < ApplicationController
  def show
    @library = Library.find(params[:id])
    @message = Message.new
  end
end
