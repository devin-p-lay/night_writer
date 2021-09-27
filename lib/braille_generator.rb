require_relative 'braille_library'
require_relative 'format'

class BrailleGenerator

  def initialize
    @bl = BrailleLibrary.new
    @format = Format.new
  end

  def breakdown(input_file)
    array = []
    input_file.chars.find_all do |character|
      array << change(character)
    end
    array
    @format.tobraille(array)
  end

  def change(letter)
    @bl.search(letter)
  end
end
