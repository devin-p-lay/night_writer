require 'rspec'
require './lib/format'

describe Format do
  before :each do
    @format = Format.new
  end

  it 'exists' do
    expect(@format).to be_a Format
  end

  describe '#to_braille' do
    it 'can format an array to braille cell format' do
      array = [['O.','OO','..'],['.O','O.','..']]
      expect(@format.to_braille(array)).to eq("O. .O\nOO O.\n.. ..")
    end
  end

  describe '#from_braille' do
    it 'can format a string from braille' do
      string = "O. .O\nOO O.\n.. .."
      expect(@format.from_braille(string)).to eq('hi')
    end
  end

  describe '#formatted_array' do
    it 'can format my nested array' do
      array = [['O.','OO','..'],['.O','O.','..']]
      expected = [["O.", ".O"], ["OO", "O."], ["..", ".."]]
      expect(@format.formatted_array(array)).to eq(expected)
    end
  end
end