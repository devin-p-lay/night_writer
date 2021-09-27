require_relative 'braille_generator'

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

  def convert_text
    BrailleGenerator.breakdown(read_message)
  end


  def read_and_convert_message
    message = convert_text
    File.open(output_file_path, "w") do |file|
      file.write(message)
    end
    puts "Created #{@output_file_path} containing #{(read_message.size)} characters"
  end
end

NightWriter.new.read_and_convert_message









# def braille_40_at_a_time(letters)
#   while letters.length > 0
#     text = letters.shift(40)
#     Format.tobraille(text)
#   end
# end

