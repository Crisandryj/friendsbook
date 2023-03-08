class RemoveRequestoridFromFriendships < ActiveRecord::Migration[7.0]
  def change
    remove_column :friendships, :requestor_id, :integer
    remove_column :friendships, :requestee_id, :integer
  end
end
