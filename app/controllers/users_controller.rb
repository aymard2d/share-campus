class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user
  end

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html { redirect_to users_path}
      format.text { render partial: "users/user_card", locals: {user: @user}, formats: [:html] }
    end
  end
end

# Animal = course
# booking = libraries
