require 'socket'

server = TCPServer.new(2345)

puts "The server is running. Open a new terminal to run the client."

socket = server.accept

socket.puts "HELLO CLIENT WHAT IS YOUR NAME?"
name = socket.gets.chomp
socket.puts "THAT'S A LOVELY NAME #{name}"

socket.close