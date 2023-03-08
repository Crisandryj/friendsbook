class FriendshipsController < ApplicationController
  def new
    @friendship = Friendship.new
  end

  def create
    @friendship = Friendship.create(friends_params)
    if @friendship.save
      redirect_to @friendship
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def friends_params
    params.require(:friendship).permit(:requested_friend_id, :friend_request_id, :accepted)
  end
end
