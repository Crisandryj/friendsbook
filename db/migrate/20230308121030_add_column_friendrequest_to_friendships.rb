class AddColumnFriendrequestToFriendships < ActiveRecord::Migration[7.0]
  def change
    add_column :friendships, :requested_friend_id, :integer
    add_column :friendships, :friend_request_id, :integer
  end
end
