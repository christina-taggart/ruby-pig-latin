@counter = 0

def is_pig?(word)
  vowels = ["a","e","i","o","u"]
  if word.start_with?("a","e","i","o","u")
    p word
  else
    seperated = word.split("")
    until vowels.include?(seperated[0])
      seperated.rotate!
    end
    @counter += 1
    p seperated.join("") + "ay"
  end
end

def pig_latin
  vowels = ["a","e","i","o","u"]
  puts "Give me a word or I'll shoot!"
  word = gets.chomp.downcase
  is_pig?(word)
end

def pig_sentence
  puts "Give me a sentence now!"
  sentence = gets.chomp.downcase
  split_up = sentence.split(" ")
  split_up.each { |x| is_pig?(x) }.join(" ")
  p @counter
end

pig_latin
pig_sentence