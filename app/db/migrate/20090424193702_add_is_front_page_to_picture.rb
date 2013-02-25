class AddIsFrontPageToPicture < ActiveRecord::Migration
  def self.up
    add_column :pictures, :is_front_page, :boolean, :default => 0
  end

  def self.down
    remove_column :pictures, :is_front_page
  end
end
