# post_message.rb

require "typhoeus"

puts ""
print "What is your name? "
sender = gets.chomp

puts ""
print "Who do you want to message? "
receiver = gets.chomp

print "Your message: "
message = gets.chomp

puts ""
print "Sending message..."

uri = "http://127.0.0.1:9393/" #set to whatever server is running your sinatra

#the body modifies the params hash in the Typhoeus convention.
Typhoeus.post(uri, :body => {:sender => sender, :receiver => receiver, :message => message})

# TODO: Post the message to the server

puts "done!"
puts "Message Posted Successfully!"
puts ""
