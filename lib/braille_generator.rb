require_relative 'braille_library'
require_relative 'format'

class BrailleGenerator
  def self.breakdown(input_file)
    array = []
    input_file.chars.find_all do |character|
      array << change(character)
    end
    array
    Format.tobraille(array)
  end

  def self.change(letter)
    BrailleLibrary.search(letter)
  end
end
