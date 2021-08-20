require "rubygems"
require "httparty"
require "json"

class Api
  include HTTParty

  def get
    base_uri = "https://goquotes-api.herokuapp.com/api/v1/random?count=1"
    response = self.class.get(base_uri)
  end
end
 
