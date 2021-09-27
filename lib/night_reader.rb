require_relative 'format'

class NightReader
  attr_reader :input_file_path,
              :output_file_path

  def initialize
    @input_file_path = ARGV[0]
    @output_file_path = ARGV[1]
    @format = Format.new
  end

  def convert_and_send_message
    message = convert_text
    File.open(output_file_path, 'w') do |file|
      file.write(message)
    end
  end

  def read_message
    File.open(input_file_path).read
  end

  def convert_text
    @format.frombraille(read_message)
  end
end

NightReader.new.convert_and_send_message