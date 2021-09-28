require_relative 'letter_generator'

class Format

  def initialize
    @lg = LetterGenerator.new
  end

  def to_braille(array)
    formatted_array(array).map { |row| row.join(' ') }.join("\n")
  end

  def from_braille(input_string)
    num = (((input_string.size - 2)/3) + 1)/3
    array = input_string.split.each_slice(num).to_a.transpose
    @lg.revert(array)
  end

  def formatted_array(array)
    array.compact.transpose
  end
end