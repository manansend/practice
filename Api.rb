require "rubygems"
require "httparty"
require "json"

class Api
  include HTTParty

  def fetch_quote
    #https://goquotes-api.herokuapp.com/api/v1/random?count=1
    base_uri = "https://andruxnet-random-famous-quotes.p.rapidapi.com/"
    response = self.class.get(base_uri)
  end
end
