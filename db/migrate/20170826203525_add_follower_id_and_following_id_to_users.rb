class AddFollowerIdAndFollowingIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :follower_id, :integer
    add_column :users, :following_id, :integer
  end
end
