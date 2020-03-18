class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :name, null: false
      t.string :work, null: false
      t.timestamps
    end
  end
end
