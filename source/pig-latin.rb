# Your code here

# check the first character
#   if its a vowel
#     do nothing
#   if its a consonant
#     remove first character
#     add first character to the end
#     add 'ay'

VOWELS = ['a','e','i','o','u']

def pig_latin(word)
  if word.length >0 && !VOWELS.include?(word[0])
    first_char = word.slice!(0)
    word = word.concat(first_char).concat('ay')
  end

  word
end


# driver

p pig_latin("farmer") == "armerfay"
p pig_latin("egg") == "egg"
p pig_latin("hour") == "ourhay"