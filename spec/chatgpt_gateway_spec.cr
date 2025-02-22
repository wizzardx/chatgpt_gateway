require "http/server"
require "json"

module ChatgptGateway
  VERSION = "0.1.0"

  private def self.health_response
    {"status": "ok"}.to_json
  end

  def self.start
    server = HTTP::Server.new do |context|
      context.response.content_type = "application/json"
      context.response.print(health_response)
    end

    server.bind_tcp "localhost", 3000
    server.listen
  end
end
