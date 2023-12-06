class LibrariesController < ApplicationController
  def show
    @library = Library.new
    @library = Library.find(params[:id])
    @message = Message.new
    @user = current_user
  end
end
