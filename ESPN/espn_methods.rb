require 'rest-client'

class ESPNMethods

  #This is the ESPN URL
  def espnURL
    RestClient.get('espn.go.com',)
  end
end