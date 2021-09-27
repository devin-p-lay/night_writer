class Format
  def self.tobraille(array)
    f_ray = array.compact.transpose
    braille = []
    counter = 0
    f_ray.each do |section|
      counter += 1
      if counter < f_ray.length
        braille << section
        braille << '\n'
      else
        braille << section
      end
    end
    braille.join
  end
end



#   return '' if one_line.nil?
#   cell = []
#   counter = 0
#   one_line.each do |section|
#     counter += 1
#     if counter < one_line.length
#       cell << (section + "\n")
#     else
#       cell << section
#     end
#   end
#   cell
# end
