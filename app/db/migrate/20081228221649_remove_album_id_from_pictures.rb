class RemoveAlbumIdFromPictures < ActiveRecord::Migration
  def self.up
    remove_column :pictures, :album_id
  end

  def self.down
  end
end
