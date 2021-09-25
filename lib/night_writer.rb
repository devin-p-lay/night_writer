class NightWriter

  def initialize()
# read contents fo a file in ruby
# write it to another file
  end

  def get_cli_input
    ARGV
  end


  def print_text
    file = File.open("message.txt").read
    puts file
  end
end


#   def read_and_write_to_file(file_path)
#     message = ARGV
#     File.open(file_path, 'a+') do |file|
#       file.write(message)
#     end
#   end
# end

# NightWriter.new.read_file('message.txt')

# NightWriter.new.print_text
NightWriter.new.get_cli_input
