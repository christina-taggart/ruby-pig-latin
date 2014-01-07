def pig_latin
  puts "Enter what you want converted to pig latin."
  puts gets.chomp.split.map{|word| pig_latin_single(word.downcase)}.join(" ")
end

def pig_latin_single(user_word)
  if user_word.match(/\A[^aeiou]/)
    consonants = user_word.slice!(0, user_word.index(/[aeiou]/))
    user_word += consonants + "ay"
  end
  user_word
end

pig_latin