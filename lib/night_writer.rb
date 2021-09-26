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

  def read_and_convert_message
    message = convert_to_braille
    File.open(output_file_path, "w") do |file|
      file.write(message)
    end
    puts "\nCreated #{@output_file_path} containing #{message.size} characters"
  end

  def convert_text
  end

  def braill_40_at_a_time
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
