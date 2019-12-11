## Introduction

This is Part 1 of our research into how people write Ruby differently. This exercise should take 10-15 minutes. There is no right or wrong way to approach it - just do what feels the most natural to you. Feel free to use books, Google or Stack Overflow, just like you would if you were programming normally, but please don't actively look for a solution to the problem as this will negatively affect the research.

## Instructions

Your task is to write a program that can win a Turing Test competition.

The Turing test, developed by Alan Turing in 1950, is a test of a machine's ability to exhibit intelligent behaviour equivalent to, or indistinguishable from, that of a human.

Your job is made significantly easier by two things:
1) The other people competing with you are overworked, grumpy, petulant developers, who want nothing to do with this ridiculous exercise. As such, even just keeping the conversation going is likely to win it for you.
2) The judge is limited to being say only a few types of things, so that people who do not speak great English can respond.

To compete you need to define a method `respond` that takes a sentence from the judge, and responds with something to keep the conversation going.

If you adhere to the following three rules, you should be able to win the competition:

### 1. If the sentence is a question you should respond with another question.

```ruby
FakeHuman.new.respond("How do you feel?")
// Returns: "Why do you want to know?"
```

### 2. If the sentence the judge telling you something about herself, you should turn the question back on her.

```ruby
FakeHuman.new.respond("I like cars")
// Returns: "Why do you like cars?"

FakeHuman.new.respond("I am hungry")
// Returns: "Why are you hungry?"
```

### 3. If the sentence is a general statement, you should ask why it is the case.

```ruby
FakeHuman.new.respond("It is warm today")
// Returns: "Why is it warm today?"

FakeHuman.new.respond("The books are blue")
// Returns: "Why are the books blue?"
```

Note: You can run your code as many times as you want, and each time we will show you if there are any statements that would be unexpected responses.
