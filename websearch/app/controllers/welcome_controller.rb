require 'net/http'
require 'json'

class WelcomeController < ApplicationController
  def index
  	
	url = 'http://localhost:3000/api/v1/news_items'
	if params[:search]
		url = url + '?q=' + params[:search]
	end

	resp = Net::HTTP.get_response(URI.parse(url))
	@jresp = JSON.parse(resp.body)

  end
end
