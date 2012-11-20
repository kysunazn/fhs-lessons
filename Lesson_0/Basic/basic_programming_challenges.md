1. Write a program that allows the user to input a string and a number, and then prints the string that number of times.
   Example: User inputs the string "hi" and the number 15. The program prints the word hi 15 times.
   Answer:
     Python27 Implementation:
     
     ```python
     string = raw_input("Input a string: ")
     number = int(raw_input("Input a number of times: "))
     for x in xrange(number):
       print string
     ```
     
     Ruby Implementation:
     
     ```ruby
     print "Input a string: "
     string = gets.chomp
     print "Input a number of times: "
     number = gets.chomp.to_i
     number.times do
       puts string
     end
     ```

2. Sum the first 100 even numbers starting with 2.
    Answer: 10100

    ```ruby
    puts (2..200).step(2).inject(:+) # Super amazing one line way'

    # More verbose way
    sum = 0
    (1..100).each do |i|
      sum += (i * 2)
    end
    puts sum
    
    # Mathematical Way
    puts (200 + 2) * 50 # (2 + 200) + (3 + 199) + (4 + 198) + ... (100 + 102) = 202 * 50
    ```
 
3. Write a program to compute the remainder of a quotient.
    Example: The remainder of 12/5 is 2.
    Answer:

    ```ruby
    # Simple way using the modulus
    puts "Remainder = #{gets.chomp.to_f % gets.chomp.to_f}"

    # Without modulus operator, only for integers
    def mod(n, d)
      n - (d * (n / d))
    end
    puts "Remainder = #{mod(gets.chomp.to_i, gets.chomp.to_i)}"
    ```

4. Write a program to display a fibonacci sequence and use it to find the 253rd term.
    Answer: 33449372971981195681356806732944396691005381570580873

    ```ruby
    def fib(n)
      return 1 if n < 3
      a,b,next_term = [1] * 2  # This is a fun way to assign 1 to a and b
      (n-2).times do
        next_term = a + b
        a = b
        b = next_term
      end
      next_term
    end
      
 



5. Given the following javascript code, how many times will the text "Hello World!" be printed to the console?
  
  for (i=1;i<10;i++){
    for (j=0;j<=i;j++){
      console.log("Hello World!");
    }
  }
  
  Answer: 54 times
  ![equation](http://latex.codecogs.com/gif.latex?\sum_{i%20=%201}^{9}i%20+%201)


