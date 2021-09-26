require './lib/braille_library'
require './lib/braille_writer'

class BrailleGenerator

  def self.breakdown(input_file)
    input_file.split('').map do |character|
      if !character.nil?
        change(character)
      end
    end.join
  end

  def self.change(char)
    one_line = BrailleLibrary.search(char)
    BrailleWriter.braille_cell(one_line)
  end
end
