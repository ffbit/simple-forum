class AddUserIdToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :user_id, :integer, :null => false, :default => 0
  end
end
