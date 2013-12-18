# Pig Latin 
 
##Learning Competencies 

##Summary 

 Here's a story every programmer knows.  Your friend George comes up to you one day and asks, "I have an idea for a script, but I don't want to write it. Will you, my talented programmer friend, do it for me?"

In this situation your job will involve:

1. Understanding the picture George has in his head of what he wants built and why
2. Creating various representations of what you think he wants, ranging from product specifications, to [wireframes](http://en.wikipedia.org/wiki/Website_wireframe) and [user stories](http://en.wikipedia.org/wiki/User_story), to [pseudocode](http://en.wikipedia.org/wiki/Pseudocode) used to communicate with other engineers.
3. Implementing prototypes and iterating towards a finalized product.

When this process goes wrong, it ends up looking like this:

<img src="/assets/tree_comic.jpg" width="600">

As a programmer, you will be expected to build code from all kinds of specifications: [user stories](http://en.wikipedia.org/wiki/User_story), wireframes, [pseudocode](http://en.wikipedia.org/wiki/Pseudocode).  It's important to be able to understand how to read these models and translate them into a functional program.

More importantly, you have to understand the value each model has.  Pseudocode, for example, is primarily used to communicate the essence of an algorithm without getting bogged down in language-specific syntax.  A good programmer can take well-written pseudocode and translate it into functional code in the language of his choice.

### Learning Goals

* Modeling a real world problem
* Abstracting the core details from a real world problem
* Reading and Writing Psuedocode

## Objectives

### Build from Pseudocode

Here's some pseudo for a `pig_latin` program.

```text
Script: CONVERT TO PIG LATIN

Iteration One: CONVERT SINGLE WORD

GET a word from user input
IF the word starts with a vowel, don't change it
ELSE replace the word with its pig latin equivalent
  GET all of the consonants before the first vowel in the word
  SET the consonants at the end of the word and add the suffix "ay"
ENDIF
PRINT the pig-latin-ified word
```

```text
Iteration Two: CONVERT COMPLETE SENTENCE

GET a sentence from user input
FOR each word in the sentence
  CONVERT SINGLE WORD
ENDFOR
PRINT the converted sentence
DISPLAY the number of words converted
```

Write code that accomplishes the expectations laid out in the pseudocode above.


<!--  DELETED BELOW, TOO GENERAL 
### Write pseudocode and share

On your own (i.e. not with your pair), come up with a simple script that you'd like to have written.  Write it out in pseudocode.

Then, present your pseudocode to your pair and have them write out the code to match.  When you're finished, you should have two different scripts, each of them written out in both pseudocode and in Ruby.

Submit both of the scripts along with their associated pseudocode as a gist.

-->
 

##Releases
###Release 0 

##Optimize Your Learning 

##Resources