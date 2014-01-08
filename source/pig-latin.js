var _ = require('lodash');

var pig_latin = function(english) {
  english = english.toLowerCase();
  if (english == "" || english.match(/^[aeiou]/))
  {
    return english;
  } 
  else 
  {
    return english.replace(/^([^aeiouy\d\W_]+)(.*)/, "$2$1ay");
  }
}

var pig_latin_sentence = function(english) {
  english_array = english.split(/\W+/);
  piglatin_array = _(english_array).map(function(word) { return pig_latin(word) });
  return piglatin_array.join(" ");
}

console.log(pig_latin("hello"));
console.log(pig_latin_sentence("hello there my aardvark"));