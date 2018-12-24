module Api
  module V1
    class NewsItemsController < Api::V1::ApplicationController

    	  def index
        	render json: decorated_news_items
      	end

      	private

      	def decorated_news_items
          NewsItem.where(
            "description ILIKE :query OR 
            title ILIKE :query OR 
            author ILIKE :query",
           query: "%#{params[:q]}%").all
        end
    end
  end
end