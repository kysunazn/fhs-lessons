```
one    3
two    3
three  5
four   4
five   4
six    3
seven  5
eight  5
nine   4
--------
total 36

ten        3
eleven     6
twelve     6
thirteen   8
fourteen   8
fifteen    7
sixteen    7
seventeen  9
eighteen   8
nineteen   8
------------
total     70

twenty           6
twenty one ...
thirty           6 
thirty one ...
forty            5
fifty            5
sixty            5
seventy          7
eighty           6
ninety           6
------------------
total           46

one hundred
one hundred and one ...
two hundred
two hundred and one ...
three ...

36(9 reps / 100)(10 100s) + 70(1 rep / 100)(10 100s) + 46(10 reps / 100)(10 100s) + 36(100 reps / 100) + 7(100 reps / 100)(9 100s) + 3(99 reps / 100)(9 100s) + 3 + 8 = 21124
```

Cheaters way:
--

`$ gem install numbers_and_words`

```ruby
require 'numbers_and_words'

class String
  def letter?
    !!self.match(/\A[a-zA-Z]+?\z/) # This regex returns true if the character is a letter A-Z or a-z and returns false if it is not
  end
end

sum = 0
(1..1000).each do |n|
  n.to_words.each_char do |c|
    sum += 1 if c.letter?
  end
end
sum += 3 * 99 * 9 # Adding in the 3 letters from the "and" numbers_and_words doesn't produce
puts sum
```
    