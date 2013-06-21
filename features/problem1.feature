Feature: Project Euler - Problem 1
  In order to ensure my basic understanding of Ruby works
  If we list all the natural numbers below 10 that are multiples of 3 or 5, 
  we get 3, 5, 6 and 9. The sum of these multiples is 23.
  Find the sum of all the multiples of 3 or 5 below 1000.

  Scenario Outline: Sum of numbers that are multiples of 3 or 5
    Given the numbers are multiples of the following numbers
      | 3 |
      | 5 |
    When the numbers are below <maximum>
    Then the sum of the numbers is <solution>

    Examples: 
    |   10 |     23 |
    | 1000 | 233168 |
