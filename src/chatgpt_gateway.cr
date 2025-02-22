require "http/server"
require "json"

module ChatgptGateway
  VERSION = "0.1.0"

  def self.start
    server = HTTP::Server.new do |context|
      context.response.content_type = "application/json"
      context.response.print({"status": "ok"}.to_json)
    end

    server.bind_tcp "localhost", 3000
    server.listen
  end
end
