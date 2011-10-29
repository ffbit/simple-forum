class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :forum_id, :null => false
      t.integer :user_id,  :null => false
      t.text :content,     :null => false

      t.timestamps
    end
  end
end
