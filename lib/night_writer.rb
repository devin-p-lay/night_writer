class NightWriter

  # def initialize #(file_path)

# read contents fo a file in ruby
# write it to another file

  # end

  def get_cli_input
    ARGV
  end

  def read_and_write_to_file(file_path)
    message = ARGV
    File.open(file_path, 'a+') do |file|
      file.write(message)
    end
  end
end

NightWriter.new.get_cli_input

NightWriter.new.read_file('write_to_file.txt')
