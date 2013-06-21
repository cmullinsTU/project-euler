Feature: Project Euler - Problem 4
  Palindromic numbers read the same both ways. The largest palindrome made 
  from the product of two 2-digit numbers is 9009 = 91 * 99.
  Find the largest palindrome made from the product of two 3-digit numbers.

Scenario: Largest palindrome from product of two 3-digit numbers
  Given the Math operation multiply
  When the numbers are a length of 3
  Then the largest palindrome is 906609

Scenario: Largest palindrome from product of two 2-digit numbers
  Given the Math operation multiply
  When the numbers are a length of 2
  Then the largest palindrome is 9009
