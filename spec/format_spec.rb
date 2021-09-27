require 'rspec'
require './lib/format'

describe Format do
  before :each do
    @format = Format.new
  end

  it 'exitst' do
    expect(@format).to be_a Format
  end

  describe '#tobraille' do
    it 'can format an array to braille cell format' do
    end 
  end
end