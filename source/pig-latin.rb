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

=begin
def pig_latin
  user_input = gets.chomp
  user_input = user_input.split("")
  vowels = ["a","e","i","o","u","y"]

  if vowels.include?(user_input[0])
    p user_input.join

  else

    user_input.each do |user_letter|
      unless vowels.include?(user_letter)
        letter = user_input.shift
        p letter
        user_input << letter
        p user_input
      else
        user_input << "ay"
        p user_input.join
        return
      end
    end
  end
end



#do this ? if condition is met : else do this thing

pig_latin
=end



def pig_latin
  user_input = gets.chomp
  user_input = user_input.split("")
  vowels = ["a","e","i","o","u","y"]

  if vowels.include?(user_input[0])


  else
    until vowels.include?(user_input[0])
      user_input << user_input.shift
    end
    user_input << "ay"

  end
  p user_input.join
end


pig_latin