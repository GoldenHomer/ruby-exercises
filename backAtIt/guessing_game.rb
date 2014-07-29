number = rand(10) + 1

puts "Guessing Game!"
puts "-" * 20

5.times do
	print "Guess my number (1-10) > "
	# print will display the string in its own line
	guess = gets.to_i
	if guess == number
		won = true
		break
	end
end

if won
	puts "You win."
else 
	puts "You lost. The number was #{number}"
end
