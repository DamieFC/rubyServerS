require 'webrick'

server = WEBrick::HTTPServer.new :Port => 2222, :DocumentRoot => root

server.mount_proc '/' do |req, res|
  res.body = 'This is another another server powered by Ruby!'
end

trap 'INT' do server.shutdown end
server.start
