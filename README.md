# TITLE: Programming a String Library: Pig Latin

# SUBTITLE: CIS 356: Assembly and Computer Organization

<!-- Pig Latin -->
## Pig Latin


* Ig-pay Atin-lay
Pig Latin is a kid's "language" made by stripping the leading consonant cluster off of a word, appending "ay" to the cluster, and appending that syllable to the end of the remaining portion of the word.
- big :: ig-bay
- small :: all-smay
- school :: ool-schay
If the word begins with a vowel, then "w" is used in place of leading consonants and "ay" is appended (note: some versions of the game use "ay" in this case).
- all :: all-way
- olive :: olive-way
- ukulele :: ukulele-way
"Words" (which are just groups of non-whitespace characters) might not have any vowels. How to handle this is never specified when playing the game.


The function expects a buffer containing whitespace separated "words" in all lower case. It processes one word at a time, writing the translation into the ~pig_latin_buffer~.

If a "word" does not contain a vowel at all, the provided translate function will, most likely, fail. There is to error testing for this case.

