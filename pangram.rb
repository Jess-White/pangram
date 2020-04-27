=begin
Write your code for the 'Pangram' exercise in this file. Make the tests in
`pangram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pangram` directory.
=end

LETTER_ARRAY = ("a".."z")
class Pangram

  def self.pangram?(sentence)
    sentence_array = sentence.split("")
    result = false
    LETTER_ARRAY.each do |letter|
      if sentence_array.include?(letter.downcase) || sentence_array.include?(letter.upcase)
        result = true
      else
        return false
      end 
    end 
    return result
  end

end 

 

# def self.pangram?(sentence)

#     sentence_array = sentence.split("")
#     result = false
#     sentence_array.each do |letter|
#       if LETTER_ARRAY.include?(letter.downcase)
#         result = true
#       else 
#         result = false
#       end 
#     end
#     return result
#   end 