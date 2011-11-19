class SearchesController < ApplicationController
  
  def index
    
  end
  
  def create
    require 'uri'
    require 'net/https'
    require 'json'
    
    search_str = params[:search]
    
    query = search_str.gsub(/\s/,'+')
    
    uri = URI.parse("http://api.punchfork.com/recipes?key=269e5381c4164515&q=#{query}&count=10")
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.request_uri)
    
    @response = http.request(request)
    @output = JSON.parse(@response.body)
    @recipes = @output["recipes"]
    
  end
  
  def new
    
  end
  
end
