require_relative 'library'

class LetterGenerator

  def initialize
    @library = Library.new
  end

  def revert(array)
    array.map do |character|
      @library.characters.invert[character]
    end.join
  end
end