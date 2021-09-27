class Format
  def self.tobraille(array)
    f_ray = array.compact.transpose
    f_ray.map { |row| row.join(' ') }.join("\n")
  end
end