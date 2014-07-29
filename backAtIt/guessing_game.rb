puts "Guessing Game!"
puts "-"*20
print "Guess my number > "
number = 5
guess = get.to_i

if guess == number
  puts "You win."
else 
  puts "You lost. The number was " + number.to_s
end
