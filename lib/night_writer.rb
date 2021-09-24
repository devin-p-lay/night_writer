class NightWriter

  def initialize #(file_path)

# read contents fo a file in ruby
# write it to another file

  end

  def print_message
    file = File.open("message.txt").read
    puts file
  end
end

NightWriter.new.print_message
