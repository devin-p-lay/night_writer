require 'rspec'
require './lib/night_writer'

describe NightWriter do
  before :each do
    @night_writer = NightWriter.new
    @bg = BrailleGenerator.new
    # @input_file_path = ARGV[0]
    # @output_file_path = ARGV[1]
  end

  it 'exists' do
    expect(@night_writer).to be_a NightWriter
  end

  it 'has readable attributes' do
    expect(@night_writer.input_file_path).to eq(ARGV[0])
    expect(@night_writer.output_file_path).to eq(ARGV[1])
  end

  describe '#convert_and_send_message' do
    before do
      File.write('./message.txt', "hello")
      @night_writer.convert_and_send_message(file: "./braille.txt", text: "O. O. OO\nOO .O .O\n.. .. OO")
    end
    xit 'can convert and send a message' do
      result = File.read("./braille.txt")
      expect(result).to eq("O. O. OO\nOO .O .O\n.. .. OO")
    end
  end

  describe '#read_message' do
    it 'can read a file' do
      expect(@night_writer.read_message).to be_a String
    end
  end

  describe '#convert_text' do
    it 'can convert text into braille' do
      expect(@night_writer.convert_text).to be_a String
    end
  end
end
