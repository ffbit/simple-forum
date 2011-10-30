class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string  :title   , :null => false
      t.integer :forum_id, :null => false 

      t.timestamps
    end
  end
end
