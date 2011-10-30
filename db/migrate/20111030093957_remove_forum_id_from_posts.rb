class RemoveForumIdFromPosts < ActiveRecord::Migration
  def up
    remove_column :posts, :forum_id
  end

  def down
    add_column :posts, :forum_id, :integer, :null => false
  end
end
