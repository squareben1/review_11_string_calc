# Code Review 11

Simple observed Kata to test TDD process.

## Retro

Excellent review, happy with test progression. Naturally fell into Chicago style TDD (small version of; built out addition entirely before moving onto subtraction &c.) which wokred well for this problem.

During code review completed up to subtraction. Robert stopped it here and said it was very well done.

Started with simplest possible tests and built up. I kept wanting to jump ahead but stopping myself and going back to process - I was pleased with this.

After the review I revisited and completed the division functionality. I also did a big refactor and made use of unusual built in #public_send method:

``` num_arr[0].public_send operator, num_arr[1] ```

This removed the need for the big if/else statement. 

NOTE: this MAY have constituted too big a refactor in one go but I changed it in small steps, running rspec after each change to ensure I didn't break anything.

Another NOTE: Maybe it would have been better to name variables `num_arr[0]` & `num_arr[1]` as I did `operator`.

Overall very happy with this review.

### Initial Requirements Gathering

Academic math papers.

Program scans through looking for sums.

Extracts as strings & evaluates as sums, returns in array: [“sum string”, answer(int)]

Should account for: + / - *

2 numbers and one operator, seperated by spaces.

**Edge Cases:**

Empty string = “” > [“”, 0]

Should account for Negative numbers (-2 + 0 = -2)

No spaces = MathError

``` 
Input / output
“” > [“”, 0]
“1” > [“1”, 1]
"1 + 1"	["1 + 1", 2]
"1 + 2”	["1 + 2”, 3]
"1 - 1"	["1 - 1", 0]
"1 * 2”	["1 * 2”, 2]
“1+1” > MathError "Input must be a valid mathematical string separated by spaces"
```