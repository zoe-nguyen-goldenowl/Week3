class Isogram    
    def self.isogram?(str)
     p str = str.gsub(/[^A-Z]/i, "").downcase
      str.chars.count == str.chars.uniq.count
    end
  end 
  
p Isogram.isogram?("Than3nhi11")

=begin
 Determine if a word or phrase is an isogram.
 An isogram (also known as a "nonpattern word") is a word or phrase without a repeating letter, however spaces and 
 hyphens are allowed to appear multiple times.
 Examples of isograms:
 
     lumberjacks
     background
     downstream
     six-year-old
 
 The word isograms, however, is not an isogram, because the s repeats.
 
=end

              
