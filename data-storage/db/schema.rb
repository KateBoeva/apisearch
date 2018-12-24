
ActiveRecord::Schema.define(version: 2018_09_23_091945) do

  enable_extension "plpgsql"

  create_table "news_items", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "author"
    t.datetime "publish_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url"
    t.string "url_to_image"
  end

end
