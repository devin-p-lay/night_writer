class BrailleWriter
  attr_reader :top,
              :middle,
              :bottom

  def initialize
    @top = top
    @middle = middle
    @bottom = bottom
  end

  def write(braille)
    
    top = braille[0]
    middle = braille[1]
    bottom = braille[2]

    puts '#{@top}\n#{middle}\n#{bottom}'
  end
end
