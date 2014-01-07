# Your code here
def pig_latin(english)
  english.downcase!
  vowels = ["a", "e", "i", "o", "u", "y"]
  return english if vowels.include?(english[0]) || english == ""
  english.gsub! (/^([^aeiouy]+)(.*)/) { $2 + $1 + "ay"}
end


#-----drivers-----
def tester(expected, actual)
  actual = pig_latin(actual)
  puts "#{expected == actual} | #{expected} | #{actual} |"
end

tester("ymgay", "gym")
tester("aardvark", "aardvark")
tester("ohnjay", "John")
tester("oolbusschay", "schoolbus")
tester("", "")