class Category < ActiveRecord::Base
  has_many :pictures
  validates_presence_of :name
end
