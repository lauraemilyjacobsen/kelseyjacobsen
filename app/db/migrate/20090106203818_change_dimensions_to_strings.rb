class ChangeDimensionsToStrings < ActiveRecord::Migration
  def self.up
    remove_column :pictures, :physical_height
    remove_column :pictures, :physical_width
    add_column :pictures, :physical_height, :string
    add_column :pictures, :physical_width, :string
  end

  def self.down
  end
end
