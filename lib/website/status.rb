require "website/status/version"
require "net/http"
module Website
  module Status
    def website_up?(host, port=80)
    	http = Net::HTTP.start(host, port, { open_timeout: 5, read_timeout: 5})
    	response = http.head("/")
    	response.code == "200"
    rescue Timeout::Error, SocketError
    	false
    end
  end
end
