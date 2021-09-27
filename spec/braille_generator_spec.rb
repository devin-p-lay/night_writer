require 'rspec'
require './lib/braille_generator'

describe BrailleGenerator do
  before :each do
    @bg = BrailleGenerator.new
  end

  it 'exists' do
    expect(@bg).to be_a BrailleGenerator
  end

  describe '#breakdown' do
    it 'can breakdown the file into individual characters' do
    end 
  end

  describe '#change' do
    it 'can change text into braille' do
    end
  end
end

