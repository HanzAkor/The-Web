require 'socket'

server = TCPServer.new(2345)

puts "The server is running."

loop do
  socket = server.accept
  while line = socket.gets
    puts line
  end
end