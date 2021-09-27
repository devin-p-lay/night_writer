require 'rspec'
require './lib/library'

describe Library do
  before :each do
    @library = Library.new(letter: nil, braille: nil)
  end

  it 'exists' do
    expect(@library).to be_a Library
  end

  describe '#search' do
    it 'can #search for a character' do
      expect(@library.search('a')).to be_an Array
      expect(@library.search('b')).to eq(['O.','O.','..'])
      expect(@library.search('c')[0]).to eq('OO')
      expect(@library.search('d')[1]).to eq('.O')
      expect(@library.search('e')[2]).to eq('..')
    end
  end

  describe '#characters' do
    it 'can return a hash of characters' do
      expect(@library.characters).to be_a Hash
      expect(@library.characters.keys).to be_a Array
      expect(@library.characters.values).to be_an Array
      expect(@library.characters.keys[0]).to be_a String
      expect(@library.characters.values[0][0]).to be_an String
    end
  end
end
