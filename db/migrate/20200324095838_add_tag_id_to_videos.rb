class AddTagIdToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :tag_id, :integer
  end
end
