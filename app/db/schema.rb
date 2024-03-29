# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090424193702) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", :force => true do |t|
    t.integer  "parent_id",       :limit => 11
    t.integer  "size",            :limit => 11
    t.integer  "width",           :limit => 11
    t.integer  "height",          :limit => 11
    t.string   "content_type"
    t.string   "filename"
    t.string   "thumbnail"
    t.string   "title"
    t.string   "date"
    t.string   "medium"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "physical_height"
    t.string   "physical_width"
    t.integer  "category_id",     :limit => 11
    t.boolean  "is_front_page",                 :default => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
