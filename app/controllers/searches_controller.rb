class SearchesController < ApplicationController
  
  def index
    
  end
  
  def create
    require 'uri'
    require 'net/https'
    require 'json'
    uri = URI.parse("http://api.punchfork.com/recipes?key=269e5381c4164515&q=chicken+parmesan&count=2")
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.request_uri)
    
    @response = http.request(request)
    @output = JSON.parse(@response.body)
    @recipes = @output["recipes"]
    
  end
  
  def new
    
  end
  
end
