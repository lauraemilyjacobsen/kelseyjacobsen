class AddCategoryToPictures < ActiveRecord::Migration
  def self.up
    add_column :pictures, :category_id, :integer
  end

  def self.down
  end
end
