require 'rspec'
require './lib/braille_library'

describe BrailleLibrary do
  before :each do
    @bl = BrailleLibrary.new(letter: nil, braille: nil)
  end

  it 'exists' do
    expect(@bl).to be_a BrailleLibrary
  end

  describe '#search' do
    it 'can #search for a character' do
      expect(@bl.search('a')).to be_an Array
      expect(@bl.search('b')).to eq(['O.','O.','..'])
      expect(@bl.search('c')[0]).to eq('OO')
      expect(@bl.search('d')[1]).to eq('.O')
      expect(@bl.search('e')[2]).to eq('..')
    end
  end

  describe '#characters' do
    it 'can return a hash of characters' do
      expect(@bl.characters).to be_a Hash
      expect(@bl.characters.keys).to be_a Array
      expect(@bl.characters.values).to be_an Array
      expect(@bl.characters.keys[0]).to be_a String
      expect(@bl.characters.values[0][0]).to be_an String
    end
  end
end
