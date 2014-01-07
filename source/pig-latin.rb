# Your code here
def pig_latin
  puts "Please enter a word"
  word = gets.chomp #tree
  letters = word.split("") #[t,r,e,e]
  if letters[0] == /[aeiou]/
    pig_latin_word = word
  else
    /(?<first_consonants>[^aeiou]*)(?<rest_of_word>.*)/ =~ word
    pig_latin_word = rest_of_word + first_consonants  + "ay"
  end
  puts pig_latin_word
end

pig_latin