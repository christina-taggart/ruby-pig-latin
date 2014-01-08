# Your code here
=begin Script: CONVERT TO PIG LATIN

Iteration One: CONVERT SINGLE WORD

GET a word from user input.
IF the word starts with a vowel, don't change it.
ELSE replace the word with its pig latin equivalent.
  GET all of the consonants before the first vowel in the word.
  SET the consonants at the end of the word and add the suffix "ay."
ENDIF
PRINT the pig-latin-ified word.


Iteration Two: CONVERT COMPLETE SENTENCE

GET a sentence from user input.
FOR each word in the sentence.
  CONVERT SINGLE WORD
ENDFOR
PRINT the converted sentence.
DISPLAY the number of words converted.
=end



def pig_latin(user_input)
  user_input = user_input.split("")
  vowels = ["a","e","i","o","u"]


  if vowels.include?(user_input[0])


  else
    until vowels.include?(user_input[0])
      user_input << user_input.shift

    end
    user_input << "ay"

  end

  return user_input.join
end

def pig_latin_sentence
  puts "please enter the setence you want translated"
  sentence = gets.chomp.split(" ")
  finished_sentence = ""
  count = 0
  sentence.each do |word|
    finished_sentence << pig_latin(word) + " "
    if word != pig_latin(word)
      count += 1
    end
  end
  p count
p finished_sentence
end

pig_latin_sentence