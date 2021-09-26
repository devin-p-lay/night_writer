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
end
