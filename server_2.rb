require 'webrick'

server = WEBrick::HTTPServer.new :Port => 8080, :DocumentRoot => root

server.mount_proc '/' do |req, res|
  res.body = 'This is another server powered by Ruby!'
end

trap 'INT' do server.shutdown end
server.start
