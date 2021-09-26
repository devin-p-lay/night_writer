require 'rspec'
require './lib/night_writer'

describe NightWriter do
  xit 'exists' do
    night_writer = NightWriter.new

    expect(night_writer).to be_a NightWriter
  end
end
