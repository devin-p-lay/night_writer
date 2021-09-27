require_relative 'library'

class LetterGenerator

  def initialize
    @library = Library.new
  end

  def revert(array)
    text = []
    array.find_all do |character|
      text << @library.characters.invert[character]
    end
    text.join
  end

  def change(letter)
    @library.search(letter)
  end
end
