# KISS approach

Generally I don't like to reinvent the wheel, so I try to use more interesting and well tested solution which was created by someone else.

## First solution - using numbers_and_words gem, with localization, really flexible, but extremely slow.

## Second one-string-solution - using humanize gem, fastest but less flexible.

## Third one-string-solution - using to_words gem.

## Fourth solution, mine. Strange but most effective. Strange 'cause I don't invest too much time. Probably it can be done better.

# Algorithms

This section is more of a problem-solving exercise in code. The task is
simple: the solution might not be.

The challenge here is to write a Ruby script that outputs every number
from 1 (one) to 1,000,000 (one million), but the output should be in
words. Example output is as follows:

```
one
two
three
...
one hundred and twelve
one hundred and thirteen
...
nine hundred and ninety nine
one thousand
one thousand and one
...
four hundred and seventeen thousand one hundred and fifty four
four hundred and seventeen thousand one hundred and fifty five
...
nine hundred and ninety nine thousand nine hundred and ninety nine
one million
```
