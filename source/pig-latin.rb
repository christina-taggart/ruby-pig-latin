# Your code here
def pig_latin(english)
  english.downcase!
  return english if english == "" || "aeiouy".include?(english[0])
  english.gsub! (/^(?<consonants>[^aeiouy]+)(?<rest_of_word>.*)/) do
    $~[:rest_of_word] + $~[:consonants] + "ay"
  end
end


#-----drivers-----
def tester(expected, actual)
  puts "#{expected == pig_latin(actual)} | #{expected} | #{pig_latin(actual)}"
end

tester("ymgay", "gym")
tester("aardvark", "aardvark")
tester("ohnjay", "John")
tester("oolbusschay", "schoolbus")
tester("", "")
