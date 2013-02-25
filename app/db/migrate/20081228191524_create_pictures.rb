class CreatePictures < ActiveRecord::Migration
  def self.up
    create_table :pictures do |t|
      t.integer :album_id, :parent_id, :size, :width, :height
      t.decimal :physical_width, :physical_height
      t.string :content_type, :filename, :thumbnail, :title, :date, :medium
      t.timestamps
    end
  end

  def self.down
    drop_table :pictures
  end
end
