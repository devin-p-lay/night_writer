require 'rspec'
require './lib/braille_library'

describe BrailleLibrary do
  before :each do
    @bl = BrailleLibrary.new()
  end

  it 'exists' do
    expect(@bl).to be_a BrailleLibrary
  end
  #
  # it 'has braille input' do
  #   char = {
  #     braille: '.0\n0.\n..',
  #     letter: 'a'
  #   }
  #   # position = {
  #   #   top:    '.0',
  #   #   middle: '0.',
  #   #   bottom: '..'
  #   # }
  #   expect(bl.search(a:)).to be_a String
  #   require "pry"; binding.pry
  # end

end
