require_relative 'library'
require_relative 'format'

class BrailleGenerator

  def initialize
    @library = Library.new
    @format  = Format.new
  end

  def manipulate(input_message)
    array = []
    split_string(input_message).each do |character|
      array << change(character)
    end
    format_to_braille(array)
  end

  def split_string(string)
    string.chars
  end

  def change(letter)
    @library.search(letter)
  end

  def format_to_braille(array)
    @format.to_braille(array)
  end
end