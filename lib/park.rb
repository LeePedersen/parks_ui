require 'net/http'
require 'googleauth'
require "uri"

class Park

  def self.get_api_response(url)
    uri = URI(url)
    req = Net::HTTP::Get.new(uri)
    response = Net::HTTP.start(uri.hostname, uri.port) {|http|
      http.request(req)
    }
    JSON.parse(response.body)
  end

end
