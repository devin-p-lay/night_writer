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
      expect()
    end
  end

  describe '#formatted_array' do
    it 'can format my nested array' do

    end
  end
end