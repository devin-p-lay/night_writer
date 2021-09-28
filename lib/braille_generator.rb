require_relative 'library'
require_relative 'format'

class BrailleGenerator

  def initialize
    @library = Library.new
    @format  = Format.new
  end

  def breakdown(input_file)
    array = []
    input_file.chars.find_all do |character|
      array << change(character)
    end
    array
    @format.to_braille(array)
  end

  def change(letter)
    @library.search(letter)
  end
end
