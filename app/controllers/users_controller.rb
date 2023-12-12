class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user
    return unless params[:query].present?
    sql_subquery = "first_name ILIKE :query OR last_name ILIKE :query OR batch ILIKE :query"
    @users = @users.where(sql_subquery, query: "%#{params[:query]}%")
    respond_to do |format|
      format.html
      format.text { render partial: "users/user_card", locals: {user: @user}, formats: [:html] }
    end
  end

  def show
    @user = User.find(params[:id])
    @friendship_accepted = Friendship.where(status: 'accepted')
    @friendship = @friendship_accepted.where(friend: current_user)
    @friendship_decline = @friendship_accepted.where(user: current_user) # friend : current_user
    @jsp = @friendship_decline + @friendship
    respond_to do |format|
      format.html { redirect_to users_path}
      format.text { render partial: "users/user_card", locals: {user: @user}, formats: [:html] }
    end
  end
end

# Animal = course
# booking = libraries
