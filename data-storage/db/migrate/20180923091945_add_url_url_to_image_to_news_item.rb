class AddUrlUrlToImageToNewsItem < ActiveRecord::Migration[5.2]
  def change
    add_column :news_items, :url, :string
    add_column :news_items, :url_to_image, :string
  end
end
