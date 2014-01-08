# Your code here
def pig_latin(english)
  english.downcase!
  return english if english == "" || "aeiouy".include?(english[0])
  /^(?<first_consonants>[^aeiouy\d\W_]+)(?<rest_of_word>.*)/ =~ english
  rest_of_word + first_consonants + "ay"
end

def pig_latin_sentence(sentence)
  sentence = sentence.split(" ")
  sentence.map! { |word| pig_latin(word) }
  sentence.join(" ")
end


#-----drivers-----
def tester(expected, actual)
  puts "#{expected == pig_latin_sentence(actual)} | #{expected} | #{pig_latin_sentence(actual)}"
end

tester("ymgay", "gym")
tester("aardvark", "aardvark")
tester("ohnjay", "John")
tester("oolbusschay", "schoolbus")
tester("", "")
tester("oolbusschay ohnjay aardvark", "schoolbus john aardvark")
