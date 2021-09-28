require_relative 'library'
require_relative 'format'

class BrailleGenerator

  def initialize
    @library = Library.new
    @format  = Format.new
  end

  def string_split_array(input_file)
    array = []
    string_split(input_file).each do |character|
      array << change(character)
    end
    array
  end

  def format_to_braille
    @format.to_braille(string_split_array)
  end

  def change(letter)
    @library.search(letter)
  end

  def string_split(string)
    string.chars
  end
end
