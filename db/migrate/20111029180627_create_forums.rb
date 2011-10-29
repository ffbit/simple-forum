class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :title
      t.integer :category_id, :null => false

      t.timestamps
    end
  end
end
