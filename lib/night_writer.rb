require_relative 'braille_generator'

class NightWriter
  attr_accessor :input,
                :output

  def initialize()
    @input = ARGV[0]
    @output = ARGV[1]
    @bg = BrailleGenerator.new
  end

  def convert_and_send_message
    message = convert_text
    File.open(output, 'w') do |file|
      file.write(message)
    end
    puts "Created #{@output} containing #{(read_message.size)} characters"
  end

  def read_message
    File.open(input).read
  end

  def convert_text
    @bg.manipulate(read_message)
  end
end

# nw = NightWriter.new(ARGV[0], ARGV[1])
# nw.convert_and_send_message

# NightWriter.new.convert_and_send_message

night_writer = NightWriter.new
night_writer.input = './message.txt' if night_writer.input.nil?
night_writer.output = './braille.txt' if night_writer.output.nil?
night_writer.convert_and_send_message