require './lib/braille_library'
require './lib/format'

class BrailleGenerator
  def self.breakdown(input_file)
    array = []
    input_file.chars.find_all do |character|
      if character != '\n'
        array << change(character)
      end
      # array
    end
    array
    # Format.tobraille(array)
  end

  def self.change(letter)
    BrailleLibrary.search(letter)
  end
end
