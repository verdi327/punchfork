class SearchesController < ApplicationController
  
  def index
    
  end
  
  def create
    require 'uri'
    require 'net/https'
    uri = URI.parse("http://api.punchfork.com/recipes?key=269e5381c4164515&q=chicken+parmesan&count=2")
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.request_uri)
    
    @response = http.request(request)
    
    
  end
  
  def new
    
  end
  
end
