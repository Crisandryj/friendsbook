class CreateFriendships < ActiveRecord::Migration[7.0]
  def change
    create_table :friendships do |t|
      t.belongs_to :requestee
      t.belongs_to :requestor

      t.timestamps
    end
  end
end
