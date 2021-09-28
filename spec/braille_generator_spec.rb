require 'rspec'
require './lib/braille_generator'

describe BrailleGenerator do
  before :each do
    @bg = BrailleGenerator.new
  end

  it 'exists' do
    expect(@bg).to be_a BrailleGenerator
  end

  describe '#manipulate' do
    it 'can breakdown the file into individual characters' do
      expect(@bg.manipulate('hi')).to eq("O. .O\nOO O.\n.. ..")
    end
  end

  describe '#split_string' do
    it 'can split string to individual character strings' do
      expect(@bg.split_string('hi')).to eq(['h','i'])
    end
  end

  describe '#change' do
    it 'can change text into braille' do
      expect(@bg.change(' ')).to eq(['..','..','..'])
    end
  end

  describe '#format_to_braille' do
    it 'can format array to braille cell' do
      expect(@bg.format_to_braille([['O.','OO','..'],['.O','O.','..']])).to eq("O. .O\nOO O.\n.. ..")
    end
  end
end