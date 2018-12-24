class NewsItemsDecorator < BaseDecorator
  delegate :title, :description, :author, :publish_at, :url, :url_to_image

end
