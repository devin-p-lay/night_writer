require 'rspec'
require './lib/night_writer'

describe NightWriter do
  before :each do
    @night_writer = NightWriter.new
    @bg = BrailleGenerator.new
    @input_file_path = ARGV[0]
    @output_file_path = ARGV[1]
  end

  it 'exists' do
    expect(@night_writer).to be_a NightWriter
  end

  it 'has readable attributes' do
    expect(@night_writer.input_file_path).to eq(ARGV[0])
    expect(@night_writer.output_file_path).to eq(ARGV[1])
  end

  describe '#convert_and_send_message' do
    it 'can convert and send a message' do
    end
  end

  describe '#read_message' do
    it 'can read a file' do
      expect(@night_writer.read_message).to eq(@input_file_path)
    end
  end

  describe '#convert_text' do
    it 'can convert text into braille' do
    end
  end
end
