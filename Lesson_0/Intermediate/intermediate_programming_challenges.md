1. If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
   Find the sum of all the multiples of 3 or 5 below 1000.
   (Problem from [Project Euler #1](http://projecteuler.net/problem=1)).
   
    Answer: 233168. There are many ways to do this. Here, we just check if the number is divisible and if it is, add it to the sum:
    
    ```ruby
    sum = 0
    (3..999).each do |n|
      sum += n if n % 3 == 0 || n % 5 == 0
    end
    puts sum
    ```

2. Write a python or ruby program to download and save the latest [XKCD comic](http://xkcd.com/) (as an image) to the current directory.
    Answer:
    
    ```ruby
    require 'rubygems'
    require 'json'
    require 'open-uri'
    
    response = open("http://xkcd.com/info.0.json") # I cheated and used his api
    data = JSON.parse(response.read)
    response.close
    
    file = open("XKCD_#{data["num"]}_#{data["title"]}.png", "wb")
    image = open(data["img"])
    file.write(image.read)
    image.close
    file.close
    ```

3. A simple substution cipher (*hint: a -> d, z -> c*) was used to encode the following string. Find the original.
    `d sulqwhu frqvlvwv ri wkuhh pdlq sduwv: wkh fdvh, wkh mdpphg sdshu wudb dqg wkh eolqnlqj uhg oljkw`
    
    Answer: `a printer consists of three main parts: the case, the jammed paper tray and the blinking red light`
    
    ```ruby
    class String
      def letter?
        !!self.match(/\A[a-zA-Z]+?\z/) # This regex returns true if the character is a letter A-Z or a-z and returns false if it is not
      end
      
      def lowercase?
        self == self.downcase
      end
    end
    
    string = "d sulqwhu frqvlvwv ri wkuhh pdlq sduwv: wkh fdvh, wkh mdpphg sdshu wudb dqg wkh eolqnlqj uhg oljkw"
    new_string = ""
    string.each_char do |c|
      if c.letter?
        code = c.ord - 3
        if c.lowercase?
          code = 123 - (97 - code) if code < 97
        else
          code = 91 - (65 - code) if code < 65
        end
      else
        code = c.ord
      end
      new_string << code.chr
    end
    puts new_string
    ```
      
4. Write a password verification program with two functions:
    - A function to accept a user inputted password and store **a md5 hash of it in a text file**.
    (*hint: The password should not be displayed during input and the user should have to reenter the password*)
    - A function to accept an inputted password and check it against the stored hashed password
    
    Answer: *See verify.rb*

5. [Project Euler Problem 17](http://projecteuler.net/problem=17).
    Answer: 21124  *See euler17.txt*