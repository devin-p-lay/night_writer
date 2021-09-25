# require 'optparse'
#
# options = {}
#
# OptionParser.new do |op|
#   op.on("-e", "--email", "Your email address") do |value|
#  	options[:name] = value
#   end
# end.parse!
#
# puts 'Your email address is: ' + options[:name]



puts "What is your name?"
name = gets

puts "What is your age?"
age = gets

if age.to_i >= 16
  puts "#{name}! You are 16 or older!"
else
  puts "#{name}! You are not over the age of 16!"
end
