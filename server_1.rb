require 'webrick'

server.mount_proc '/' do |req, res|
  res.body = 'This is one server powered by Ruby!'
end

trap 'INT' do server.shutdown end
server.start
