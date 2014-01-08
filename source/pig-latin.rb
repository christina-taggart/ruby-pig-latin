def to_pig_latin(word)
  if word.match(/\A([aeiou])/)
    p word
  else
    after_vowel = word.slice(/([aeiou])\w*/)
    before_vowel = word.slice(/^\w([^aeiou]*)/)
    p after_vowel + before_vowel + "ay"
  end
end

def pig_latin
  puts "Give me a word!"
  word = gets.chomp.downcase
  to_pig_latin(word)
end

def pig_sentence
  puts "Give me a sentence!"
  sentence = gets.chomp.downcase
  complete = sentence.split.map {|x| to_pig_latin(x)
  }.join(" ")
  p complete
end


pig_latin
pig_sentence