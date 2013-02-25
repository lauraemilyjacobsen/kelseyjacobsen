class Picture < ActiveRecord::Base
  belongs_to :category
  
  has_attachment :content_type => :image,
    :storage => :file_system,
    :max_size => 1.megabyte,
    :resize_to => '500x750>',
    :thumbnails => {
    :large => '450x450>',
    :medium => '150x150>',
    :small => '100x100>'}
  
  validates_as_attachment
  
  named_scope :parent, :conditions => { :parent_id => nil }
  named_scope :previous, lambda { |p| 
    {:conditions => ["id<? and category_id = ?", p.id, p.category_id], :limit => 1, :order => "id DESC"} }
  named_scope :next, lambda { |p|
    {:conditions => ["id>? and category_id = ?", p.id, p.category_id], :limit => 1, :order => "id" } }
  named_scope :front_page_picture, 
    :conditions => { :is_front_page => true }, :limit => 1
  
  def set_as_front_page
    Picture.parent.each do |p|
      if p.is_front_page
        p.update_attributes(:is_front_page => false)
      end
    end
    self.is_front_page = true
    self.save
  end
  
  def self.front_page
    if Picture.front_page_picture.empty?
      Picture.first
    else
      Picture.front_page_picture.first
    end
  end
  
  def previous_picture
    Picture.parent.previous(self).first
  end
  
  def next_picture
    Picture.parent.next(self).first
  end
  
  def dimensions
    if !physical_width.empty? && !physical_height.empty?
      physical_width + '" x ' + physical_height + '"'
    end
  end
  
end
