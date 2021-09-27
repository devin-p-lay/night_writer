class LetterGenerator

  def initialize
    @library = Library.new
  end

  def revert(array)
    text = []
    array.find_all do |character|
      text << change(character)
    end
  end

  def change(letter)
    @library.search(letter)
    require "pry"; binding.pry
  end
end
