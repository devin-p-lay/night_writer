require 'rspec'
require './lib/braille_writer'

describe BrailleWriter do
  before :each do
    @bw = BrailleWriter.new
  end

  it 'exists' do
    expect(@bw).to be_a BrailleWriter
  end

  describe '#write' do
    it 'can write braille' do
      expect(@bw.write('a')).to eq("#{top}\n#{middle}\n#{bottom}")
    end
  end 
end
