{{PROBLEM}} Method Design Recipe
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

Create and test drive a program which can create a diary entry, return the title, contents, count the words of the contents of the entry, gives us an approximation of the time needed to read the entry by the user and return the piece of text a user can read in a determinate time in minutes.

2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

class DiaryEntry
1) we need a initialize method that takes two arguments (the title and the contents)
2) method title to return the title of the diary entry
3) method contents to return the contents of the diary entry
4) method count_words to return the number of words in the content
5) method reading_time to return the average reading time in minutes for the user to read the entry - request an integer argument stating the words per minute the user can read
6) method reading_chunk, given the wpm and the minutes the user has, returns a piece of information the user is able to read in the time stated

# EXAMPLE

# `extract_upper` extracts uppercase words from a list of words
uppercase_words = extract_uppercase(mixed_words)

mixed_words: a string (e.g. "hello WORLD")
uppercase_words: a list of strings (e.g. ["WORLD"])

# The method doesn't print anything or have any other side-effects
3. Create Examples as Tests
Make a list of examples of what the method will take and return.

First of all we need to create the object for our class
entry = DiaryEntry.new (and pass two values, title and contents)

Then we can test the two first methods that gives us back the title and the contents as string

entry.title
entry.contents

If all is working fine we can then go to check if we have the proper word count from the string/text we are passing as contents

entry.count_words

Afterwards we can also work on the next method returning the reading time which we will work out with a operation of count the words of the contents divided by the words per minute the user can read

entry.reading_time (and we pass the words per minute)

Last method is more complicated and it should divide and show the amont of information we would be able to read in an specific time based on the words per minute we are able to read.

If you call the method again it will show the next piece of text for the same time given, when you reach the end you go back to the first piece of information.

Separate the words, make an array and in each index store the amount of words you can read in the time given, when reach last position of index, go back to 0. Store index in an auxiliar count var.

# EXAMPLE

entry = DiaryEntry.new("Entry01", "This are the contents of the Entry01 in the diary")
entry.title => Entry 01
entry.contents => This are the contents of the Entry01 in the diary
entry.count_words => 10
entry.reading_time(10) => 1
entry.reading_time(5) => 2

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.