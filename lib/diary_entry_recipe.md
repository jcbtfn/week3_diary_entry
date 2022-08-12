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

# EXAMPLE

extract_uppercase("hello WORLD") => ["WORLD"]
extract_uppercase("HELLO WORLD") => ["HELLO", "WORLD"]
extract_uppercase("hello world") => []
extract_uppercase("hello WoRLD") => []
extract_uppercase("hello WORLD!") => ["WORLD"]
extract_uppercase("") => []
extract_uppercase(nil) throws an error
Encode each example as a test. You can add to the above list as you go.

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.