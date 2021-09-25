class NightWriter
  attr_reader :input_file_path,
              :output_file_path

  def initialize()
    @input_file_path = ARGV[0]
    @output_file_path = ARGV[1]
  end

  def read_message
    File.open(input_file_path).read
  end

  def read_and_send_message
    message = read_message
    File.open(output_file_path, "w") do |file|
      file.write(message)
    end 
    puts "\nCreated #{@output_file_path} containing #{message.size} characters"
  end

end







#   def read_and_write(file_path)
#     message = ARGV
#     File.open(file_path, 'a+') do |file|
#       file.write(message)
#     end
#   end

# NightWriter.new.read_and_write(input_file_path)

NightWriter.new.read_and_send_message
