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
    num = (((input_file.size - 2)/3) + 1)/3
    array = input_file.split.each_slice(num).to_a.transpose
    @lg.revert(array)
  end
end