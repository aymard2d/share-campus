class DashboardsController < ApplicationController
  before_action :authenticate_user!
  def index
    @courses = Course.all
    @user_courses = current_user.courses
    @likes = Like.all
    @friendship_requests = current_user.friendships.where(status: 'pending')
    @friendship = Friendship.all

  end

  def show
    @courses = Course.where(user: current_user)
    @libraries = Library.where(user: current_user)
    @user = current_user
    @user_courses = Course.where(user_id: @user.id) if @user
    @likes = Like.where(user: current_user)
  end
end
