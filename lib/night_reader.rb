require_relative 'format'

class NightReader
  attr_accessor :input,
              :output

  def initialize
    @input = ARGV[0]
    @output = ARGV[1]
    @format = Format.new
  end

  def read_message
    File.open(input).read
  end

  def convert_text
    @format.from_braille(read_message)
  end

  def convert_and_send_message
    message = convert_text
    File.open(output, 'w') do |file|
      file.write(message)
    end
    puts "Created #{@output} containing #{(message.size)} characters"
  end
end

# NightReader.new.convert_and_send_message
#
night_reader = NightReader.new
night_reader.input = './braille.txt' if night_reader.input.nil?
night_reader.output = './output.txt' if night_reader.output.nil?
night_reader.convert_and_send_message