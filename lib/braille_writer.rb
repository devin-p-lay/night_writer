class Format
  def self.tobraille(array)

    return '' if one_line.nil?
    cell = []
    counter = 0
    one_line.each do |section|
      counter += 1
      if counter < one_line.length
        cell << (section + "\n")
      else
        cell << section
      end
    end
    cell
  end
end
