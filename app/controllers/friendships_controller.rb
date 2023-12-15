class FriendshipsController < ApplicationController
  before_action :authenticate_user!

  def index
    @friends = Friendship.all
    @friends = current_user.friends
    @friend_requests = current_user.friendships.where(status: 'pending')
  end

  def create
    friend = User.find(params[:user_id])

    user = current_user
    friendship = Friendship.new(friend: friend, status: 'pending', user: user)

    if friendship.save
      redirect_to users_path, notice: "Demande d'amitié envoyée."
    else
      redirect_to users_path, alert: "Erreur lors de l'envoi de la demande."
    end
  end

  def destroy
    friendship = current_user.friendships.find(params[:id])
    friendship.destroy
    redirect_to users_path, notice: 'Ami supprimé.'
  end

  def accept
    friendship = Friendship.find(params[:id])
    friendship.update(status: 'accepted')
    redirect_to dashboards_path, notice: "Demande d'ami acceptée"
  end

  def decline
    friendship = Friendship.find(params[:id])
    friendship.destroy
    redirect_to dashboards_path, notice: "Demande d'ami refusée"
  end

  private

  def params_friendship
    params.require(:friendship).permit(:user_id)
  end
end
