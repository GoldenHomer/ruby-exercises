# Capital letter for class name is necessary!
class Card
	# When you need both a reader and writer for an instance variable, you can shorthand these as:
	attr_accessor :front, :back

	# Paretheses are optional in Ruby
	def initialize front, back
		@front = front
		@back = back
		# Like the keyword this in JavaScript when creating an constructor
	end

	# def front
	# 	@front
	# end

	# Below is shorthand for above (for both parameters)
		#attr_reader :front, :back

	# def front= front
	# 	@front = front
	# end

	# Same here as well
		#attr_writer :front, :back

	# Both of these are typical placed on the first line after class
end

class Deck
	def initialize name
		@name = name
		@cards = []
	end

	def << card
		@cards << card
	end

	def shuffle
		@cards.shuffle!
		# Remember that a method with ! appended overrides rather than create a copy.
end

card1 = Card.new("cat","neko")
card2 = Card.new("dog","inu")

deck = Deck.new("Japanese")

deck << card1
deck << card2



deck.cards.each do |card|
	front = card.front
	back = card.back

	puts "#{front} > "
	guess = gets.chomp # Remember, chomp is a method that removes the return character at the end.

	if guess = back
		puts "Correct"
	else
		puts "Incorrect. The answer was #{back}"
	end
end