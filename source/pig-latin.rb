# Your code here

#if a e i o u, do nothing
#else, do stuff

def pig_latin (word)
  if /[^aeiou]/.match(word.split('').first)
     return word.sub(/([^aeiou]*)(.*)/){"#{$2}-#{$1}ay"}
  end
  word
end

p pig_latin("string")
# == "ingstray"
p pig_latin("apples") == "apples"