# Script: CONVERT TO PIG LATIN

# Iteration One: CONVERT SINGLE WORD

# GET a word from user input.
# IF the word starts with a vowel, don't change it.
# ELSE replace the word with its pig latin equivalent.
#   GET all of the consonants before the first vowel in the word.
#   SET the consonants at the end of the word and add the suffix "ay."
# ENDIF
# PRINT the pig-latin-ified word.
# Iteration Two: CONVERT COMPLETE SENTENCE

# GET a sentence from user input.
# FOR each word in the sentence.
#   CONVERT SINGLE WORD
# ENDFOR
# PRINT the converted sentence.
# DISPLAY the number of words converted.# Your code here



def pig_latin(word)
  letters = word.split("")
  if letters[0].include?("a"||"e"||"i"||"o"||"u")
  else
    /(?<first>[^aeiou]*)(?<second>[aeiou].*)/ =~ word
    word = second + first + "ay"
  end
  word
end


p pig_latin("darcey") == "arceyday"
p pig_latin("string") == "ingstray"
p pig_latin("david") == "avidday"
p pig_latin("apple") == "apple"

def pig_sentence(sentence)
  words = sentence.split(" ")
  words.map! {|x| pig_latin(x) }
  p words.join(" ")
end

p pig_sentence("we like to ski") == "eway ikelay otay iskay"