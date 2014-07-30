card = {
	"front" => "cat",
	"back" => "neko"
}

card2 = {
	"front" => "dog",
	"back" => "inu"
}

deck = [card, card2]

deck.each do |i|
	front = card["front"]
	back = card["back"]

	puts "#{front} > "
	guess = gets.chomp # Remember, chomp is a method that removes the return character at the end.

	if guess = back
		puts "Correct"
	else
		puts "Incorrect. The answer was #{back}"
	end
end