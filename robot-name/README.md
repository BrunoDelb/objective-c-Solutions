# Robot Name

Write a program that manages robot factory settings.

When robots come off the factory floor, they have no name.

The first time you boot them up, a random name is generated, such as
RX837 or BC811.

Every once in a while we need to reset a robot to its factory settings,
which means that their name gets wiped. The next time you ask, it will
respond with a new random name.

The names must be random: they should not follow a predictable sequence.
Random names means a risk of collisions. Your solution should not allow
the use of the same name twice when avoidable. In some exercism language
tracks there are tests to ensure that the same name is never used twice.

## Setup

There are two different methods of getting set up to run the tests with Objective-C:

- Create an Xcode project with a test target which will run the tests.
- Use the ruby gem `objc` as a test runner utility.

Both are described in more detail here: http://exercism.io/languages/objective-c


### Submitting Exercises

When submitting an exercise, make sure your solution file is in the same directory as the test code.

For example, if you're submitting `Bob.m` for the Bob exercise, the submit command would be something like `exercism submit <path_to_exercism_dir>/objective-c/bob/Bob.m`.

## Source

A debugging session with Paul Blackwell at gSchool. [view source](http://gschool.it)
