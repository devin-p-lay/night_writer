class BrailleGenerator
  def self.braille_library(string)
     string.split("").map do |char|
       if BrailleLibrary.find(char)
         BrailleLibrary.find(char)
       else
         char
       end
     end
   end
end
