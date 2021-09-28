require './lib/letter_generator'
require 'rspec'

describe LetterGenerator do
  before :each do
    @lg = LetterGenerator.new
    @library = Library.new
  end

  it 'exists' do
    expect(@lg).to be_a LetterGenerator
  end

  describe '#revert' do
    it 'can revert a nested braille array back to letter string' do
      nested_array = [['O.','OO','..'],['.O','O.','..']]
      expect(@lg.revert(nested_array)).to eq("hi")
    end
  end
end 