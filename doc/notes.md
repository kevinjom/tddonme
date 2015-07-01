# Notes for book [Test Driven Development]

## Overview of TDD

### Basic Principles  - Red/Green/Refactor

1. Write the smallest possible test case that matches what we need to program.
2. Run the test and watch it fail. This gets you into thinking how to write only the code that makes it pass.
3. Write some code with the goal of making the test pass.
4. Run your test suite. Repeat steps 3 and 4 until all tests pass.
5. Go back and refactor your new code, making it as simple and clear as possible while keeping the test suite green.

### How to get a test passed quickly 

1. Return a fake result
2. Implement it
3. Triangulation, we only generalize code when we have two or more examples

## What's in my mind

1. you need think before you write any tests, such as you maybe need to 
   make a list which contains what you want to test
2. you don’t need do much design at first, you can implement what you want, 
   then refactor and test util you make the code clean

## Something confuse me

1. When to move forward to write implementation and when to go back to wirte 
   tests?
2. When shouldn't I use TDD?


