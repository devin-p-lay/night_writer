class NightWriter

  # def initialize #(file_path)

# read contents fo a file in ruby
# write it to another file

  # end

  def read_file(file_path)
    message = "Testing the read and write for Night Writer"
    File.open(file_path, 'a+') do |file|
      file.write(message)
    end
  end
end

NightWriter.new.read_file('write_to_file.txt')
