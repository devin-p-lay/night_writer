class Format
  def tobraille(array)
    formatted_array = array.compact.transpose
    formatted_array.map { |row| row.join(' ') }.join("\n")
  end
end