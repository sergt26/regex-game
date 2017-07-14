starting_sentence = "Hi from matching land"
sentence_array = starting_sentence.split("").map(&:downcase)
accurate_count = sentence_array - [" "]
final_sentence = starting_sentence.gsub(/[a-zA-Z]/, "_").split("")

while sentence_array.count("") < accurate_count.count
  puts "Guess a letter:"
  guess = gets.downcase.chomp

  if sentence_array.include?(guess)
    letter_index = sentence_array.find_index(guess)
    sentence_array[letter_index] = ""
    final_sentence[letter_index] = guess
    puts "Correct! The sentence is now: #{final_sentence.join}"
  else
    puts "Sorry, that letter isn't the right answer, please try again."
  end
end


# Setting the variable sentence_array equal to starting_sentence.split which puts the string into an array and every word/value inside the string
# becomes its own values inside to the array with split. Now when we give the split method an argument(""), this makes every single letter/value
# becomes its own string value inside of the array. including the spaces between the words. The map method iterates through the array and
# the simplified syntax uses &:downcase so all letter/value strings in the array are lowercase letters.

# Next we set the variable accurate_count = sentence_array - [" "]; what this does is subtracts empty spaces inside of the array in sentence_array
# variable and then stores it to accurate_count. THis allows you to run an accurate count of the letter/values inside of the array without counting
# spaces.

# Then we set the final_sentence = starting_sentence.gsub(/[a-zA-Z]/, "_").split(""): This is where our regex will go and is defined!
# What this does is get the starting_sentence and adds the gsub method (Global Substitution) and we pass a regex as an arguement for all lowercase
# and uppercase letters between a-z, and then the second argument, substitutes the letter found with _ ! Additionally, we add the split method to
# this which will convert the final_sentence into an array and remove all the empty spaces.

# We then create a while loop (one of the rare cases to use one, for this game it actually fits perfectly).
# What it says is that while the sentence_array.count(""): (this returns 0 since the argument looks for all the empty strings and there aren't any
# when we start) is < accurate_count.count:
# (accurate_count returns the array without any spaces then we use the count method to give us an accurate count of all strings inside the array)
# So this code will continue to run and puts "Guess a letter" until that conditional returns false. Essentially, until the array has
# nothing but empty strigs "". Additionally, we are setting the variable
# guess to gets.downcase.chomp which will be whatever letter the user inputs into the terminal and it will lowercase the letter to stay consistent
# with our program as well as remove the \n character with chomp.

# We then create an if statement inside the while loop that will check to see if the sentence_array.include?(guess):
# (.include? works really well with arrays, like gsub works really well with strings), if the array includes whatever
# letter the user guessed, then we set some variables: letter_index which looks in the sentence_array and finds the index of whatever letter the user
# guessed. Then sentence_array[letter_index] = "" this basically takes sentence_array and replaces the in the letter_index position to ""
# THen final_sentence takes the letter_index value and sets it equal to whatever the user guessed.
# finally if this is met, it'll puts "Correct! The sentence..." If not or else, puts "Sorry, that letter ...."
