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

  def write_message
    message = read_message
    message += "\n ---This message was created at: " + Time.now.to_s + "---"
    File.open(output_file_path, "w") do |file|
      file.write(message)
    end
    puts "\nNIGHT WRITER:"
    puts message
  end

end







#   def read_and_write(file_path)
#     message = ARGV
#     File.open(file_path, 'a+') do |file|
#       file.write(message)
#     end
#   end

# NightWriter.new.read_and_write(input_file_path)

NightWriter.new.write_message
