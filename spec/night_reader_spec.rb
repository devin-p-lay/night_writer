require 'rspec'
require './lib//format'
require './lib/night_reader'

describe NightReader do
  before :each do
    @night_reader = NightReader.new
    @input_file_path = ARGV[0]
    @output_file_path = ARGV[1]
    @format = Format.new
  end

  it 'exists' do
    expect(@night_reader).to be_a NightReader
  end

  it 'has readable attributes' do
    expect(@input_file_path).to eq(ARGV[0])
    expect(@output_file_path).to eq(ARGV[1])
  end
end