require "rubygems"
require "httparty"
require "json"

class Api
  include HTTParty

  def fetch_quote(base_uri="https://andruxnet-random-famous-quotes.p.rapidapi.com/")
    response = self.class.get(base_uri)
  end
end
