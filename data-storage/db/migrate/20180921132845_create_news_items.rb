class CreateNewsItems < ActiveRecord::Migration[5.2]
  def change
    create_table :news_items do |t|
      t.string :title
      t.text :description
      t.string :author
      t.string :url
      t.string :url_to_image
      t.datetime :publish_at

      t.timestamps
    end
  end
end
