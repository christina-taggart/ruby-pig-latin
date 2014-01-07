# GET a word from user input.
# IF the word starts with a vowel, don't change it.
# ELSE replace the word with its pig latin equivalent.
#   GET all of the consonants before the first vowel in the word.
#   SET the consonants at the end of the word and add the suffix "ay."
# ENDIF
# PRINT the pig-latin-ified word.


def convert_word_to_pig_latin
  word = gets.chomp
  return puts word if word.match(/^[aeiouy]/i)
  consonants = word.match(/^[^aeiouy]+/i).to_s
  puts "#{word.gsub!(consonants, "")}#{consonants}ay"
end

convert_word_to_pig_latin