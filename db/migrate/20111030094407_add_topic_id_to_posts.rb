class AddTopicIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :topic_id, :integer, :null => false, :default => 0
  end
end
