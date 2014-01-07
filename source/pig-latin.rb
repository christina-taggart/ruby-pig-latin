def pig_latin (word)
  if /[^aeiou]/.match(word.split('').first)
     return word.sub(/([^aeiouy]*)(.*)(\W*)/){"#{$2}-#{$1.downcase}ay"}
  end
  word
end

puts "Enter sentence to convert to pig latin:"
words = gets.chomp.split(' ')
pig_latin_sentence = ""
num_of_changed = 0
words.each do |word|
  pig_latin_sentence += " " + pig_latin(word)
  num_of_changed += 1 if pig_latin(word) != word
end
p pig_latin_sentence.strip
p "Number of words: #{num_of_changed}"


## TESTS ##
p pig_latin("string") == "ing-stray"
p pig_latin("apples") == "apples"
