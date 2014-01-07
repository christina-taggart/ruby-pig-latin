def pig_latin
  puts "Enter what you want converted to pig latin."
  unconverted = gets.chomp

  if unconverted.match(/\A[^aeiou]/)
    consonants = unconverted.slice!(0, unconverted.index(/[aeiou]/))
    puts unconverted + consonants + "ay"
  else
    puts unconverted
  end

end

pig_latin