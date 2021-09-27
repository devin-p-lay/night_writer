require_relative 'letter_generator'

class Format

  def initialize
    @lg = LetterGenerator.new
  end

  def tobraille(array)
    formatted_array = array.compact.transpose
    formatted_array.map { |row| row.join(' ') }.join("\n")
  end

  def frombraille(input_file)
    array = input_file.split
    require "pry"; binding.pry
    @lg.revert(array)
  end
end