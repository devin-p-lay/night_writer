require './lib/braille_library'
require './lib/braille_writer'

class BrailleGenerator
  def self.breakdown(read_message)
    array = []
    read_message.chars.find_all do |character|
      if character != '\n'
        # change(character)
        array << change(character)
      end
      array.delete("")
    end
    array.compact.transpose
    Format.tobraille(array)
  end

  def self.change(letter)
    BrailleLibrary.search(letter)
  end
end
