var pig_latin = function(english) {
  english = english.toLowerCase();
  if (english == "" || english.match(/^[aeiou]/))
  {
    return english
  } 
  else 
  {
    return english.replace(/^([^aeiouy\d\W_]+)(.*)/, "$2$1ay")
  }
}

console.log(pig_latin("hello"))